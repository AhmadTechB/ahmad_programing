
import 'package:ahmad_practices/constant/app_color/app_color.dart';
import 'package:ahmad_practices/constant/app_style/app_style.dart';
import 'package:ahmad_practices/widget/custom_sized_box.dart';
import 'package:ahmad_practices/widget/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFieldWithLabel extends StatefulWidget {
  final String? title;
  final String? helperText;

  ///use this to secure the textfield
  final bool isSecure;

  ///this will hold max length for characters in textfield
  final int maxLength;

  ///hint text will show hint for the text
  final String? hint;

  ///use this top changw inputType and keyboard type
  final TextInputType? inputType;

  ///use this variable to give some initial text to textField
  final String? initValue;

  ///this variable holds the suffix icon widget
  final Widget? suffix;

  ///use this variable to provide prefix svg icon path
  ///Note:- always use SVG here
  final String? prefixIconPath;

  ///Text editing controller
  final TextEditingController? controller;

  ///validator
  final String? Function(String? value)? validator;

  ///this will get triggered when text field is changed
  final Function(String)? onChanged;

  ///this method will be called when input is completed
  final Function(String)? onSaved;

  ///this will hold all the text input formatters
  final List<TextInputFormatter>? inputFormatters;

  ///this will hold max line
  final int? maxLines;

  ///this will enable and disable textformfield
  final bool? isEnabled;

  ///Use this variable to change the scale of suffix icon if the icon is small we can also decrease the scale
  ///EX:- 1.2 will increase the scale of icon by 20%
  final double? suffixIconScale;

  static const int MAX_LENGTH = 500;

  const CustomTextFieldWithLabel(
      {Key? key,
        this.title,
        this.hint,
        this.helperText,
        this.inputType,
        this.initValue = "",
        this.isSecure = false,
        this.controller,
        this.validator,
        this.maxLength = MAX_LENGTH,
        this.onChanged,
        this.onSaved,
        this.inputFormatters,
        this.suffix,
        this.prefixIconPath,
        this.maxLines,
        this.suffixIconScale = 1,
        this.isEnabled = true})
      : super(key: key);

  @override
  _CustomTextFieldWithLabelState createState() =>
      _CustomTextFieldWithLabelState();
}

class _CustomTextFieldWithLabelState extends State<CustomTextFieldWithLabel> {
  late ThemeData theme;

  FocusNode _focusNode = FocusNode();

  double borderSize = 1;
  Color normalColor = AppColors.blue3350DB;
  Color errorColor = AppColors.red534A;
  Color normalLabelColor = AppColors.grey718096;

  TextStyle labelStyle = AppTextStyle.text16blue3350DBW400;

  Color labelColor = AppColors.grey718096;
  BoxBorder? border;
  Color mainColor = AppColors.blue3350DB;
  bool fieldHasFocus = false;
  bool inputHasError = false;
  String? errorText;

  @override
  void initState() {
    super.initState();

    widget.controller?.text = widget.initValue ?? "";

    _focusNode.addListener(() {
      checkFieldState();
    });
  }

  @override
  void didChangeDependencies() {
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 65 * SizeConfig.heightMultiplier!,
              decoration: BoxDecoration(
                color: mainColor.withOpacity(0.05),
                border: border,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 7 * SizeConfig.heightMultiplier!,
                left: 16 * SizeConfig.widthMultiplier!,
                right: 4 * SizeConfig.widthMultiplier!,
              ),
              child: TextFormField(
                enabled: widget.isEnabled,
                focusNode: _focusNode,
                controller: widget.controller,
                autocorrect: false,
                obscureText: widget.isSecure,
                keyboardType: widget.inputType,
                validator: (value) {
                  errorText = widget.validator?.call(value);
                  inputHasError = errorText != null ? true : false;
                  checkFieldState();
                  return (errorText == null || errorText?.isEmpty == true)
                      ? null
                      : '';
                },
                cursorColor: mainColor,
                style: AppTextStyle.text20DarkBlue1237W400,
                maxLength: widget.maxLength,
                inputFormatters: widget.inputFormatters,
                maxLines: widget.maxLines ?? 1,
                onChanged: (text) {
                  widget.onChanged?.call(text);
                  inputHasError = false;
                  errorText = null;
                  checkFieldState();
                },
                decoration: InputDecoration(
                  counterText: "",
                  hintStyle: AppTextStyle.text20DarkBlue1237W400
                      .copyWith(color: AppColors.grey718096),
                  floatingLabelStyle: labelStyle,
                  label: Row(
                    children: [
                      if (widget.prefixIconPath != null)
                        Padding(
                            padding: const EdgeInsets.only(right: 6),
                            child: Center(
                                child: Transform.scale(
                                  scale: widget.suffixIconScale,
                                  child: SvgPicture.asset(
                                    widget.prefixIconPath ?? '',
                                    color: labelColor,
                                    width: SizeConfig.imageSizeMultiplier! * 24,
                                  ),
                                ))),
                      Text(
                        widget.title ?? '',
                        style: labelStyle.copyWith(color: labelColor),
                      ),
                    ],
                  ),
                  helperText: widget.helperText,
                  suffixIcon: widget.suffix,
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
        if (errorText != null && errorText?.isNotEmpty == true)
          Transform.translate(
            offset: Offset(0, -5 * SizeConfig.heightMultiplier!),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 15 * SizeConfig.widthMultiplier!,
                ),
                Icon(
                  Icons.info,
                  color: errorColor,
                  size: 20,
                ),
                CustomSizedBox(
                  width: 7,
                ),
                Text(
                  errorText ?? '',
                  style: AppTextStyle.text15red534ADW400.copyWith(height: 1.3),
                )
              ],
            ),
          )
      ],
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void checkFieldState() {
    if (inputHasError == true) {
      mainColor = errorColor;
      border = Border.all(width: 1, color: mainColor);
      labelColor = errorColor;
      setState(() {});
    } else if ((_focusNode.hasFocus && inputHasError == false) ||
        (widget.controller?.text.isNotEmpty == true &&
            inputHasError == false)) {
      mainColor = normalColor;
      border = Border.all(width: 1, color: mainColor);
      labelColor = mainColor;
      setState(() {});
    } else {
      border = null;
      labelColor = AppColors.grey718096;
      setState(() {});
    }
  }
}
