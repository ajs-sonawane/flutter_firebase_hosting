import 'package:flutter/material.dart';

class TextInputFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextStyle? style;
  final TextStyle? hintTextStyle;
  final double? height;
  final Color? fillColor;
  final Color? color;
  final Color? cursorColor;
  final int? maxLines;
  final Widget? suffixIcon;
  final Function()? onTap;
  final Function()? onSubmitted;
  final Function(String s)? onChanged;
  final Widget? suffixText;
  final Widget? preffixIcon;
  final Widget? suffixWidget;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final bool? readOnly;
  final bool? obscureText;
  final int? maxLength;
  final TextAlign? textAlign;
  final inputFormatters;
  final bool? autofocus;

  const TextInputFormField(
      {Key? key,
      this.hintText,
      this.autofocus = false,
      this.controller,
      this.style,
      this.hintTextStyle,
      this.height,
      this.fillColor,
      this.color = Colors.white,
      this.contentPadding,
      this.maxLines,
      this.keyboardType,
      this.suffixIcon,
      this.suffixText,
      this.onTap,
      this.readOnly,
      this.onSubmitted,
      this.onChanged,
      this.maxLength,
      this.textAlign,
      this.preffixIcon,
      this.obscureText,
      this.inputFormatters,
      this.cursorColor = Colors.blue,
      this.suffixWidget,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      height: height,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(6.0))),
        height: height,
        child: TextFormField(
          cursorColor: cursorColor,
          inputFormatters: inputFormatters,
          // validator: validator,
          // obscureText: obscureText,
          maxLength: maxLength,
          readOnly: readOnly!,
          maxLines: maxLines,
          keyboardType: keyboardType,
          controller: controller,
          textAlign: textAlign == null ? TextAlign.start : textAlign!,
          autofocus: autofocus!,
          style: style,
          textCapitalization: TextCapitalization.words,
          onTap: onTap,
          // onSubmitted: onSubmitted,
          onChanged: onChanged,
          decoration: new InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.transparent, width: 1.0),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(6.0),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.transparent, width: 1.0),
                borderRadius: const BorderRadius.all(
                  const Radius.circular(6.0),
                ),
              ),
              border: new OutlineInputBorder(),
              filled: true,
              counterText: "",
              hintStyle: hintTextStyle,
              hintText: "$hintText",
              fillColor: fillColor,
              prefixIcon: prefixIcon,
              suffix: suffixWidget,
              suffixIcon: suffixIcon,
              contentPadding: contentPadding),
        ),
      ),
    );
  }
}
