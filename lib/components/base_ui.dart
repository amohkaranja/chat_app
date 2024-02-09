import 'package:chat_app/components/ui/buttons_ui.dart';
import 'package:chat_app/components/ui/input_action.dart';
import 'package:chat_app/components/ui/inputs_ui.dart';
import 'package:chat_app/components/ui/texts_ui.dart';
import 'package:chat_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
class UI {
  UI._();
    static Widget text(
    String text, {
    TextAlign textAlign = TextAlign.start,
    Color? textColor,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? fontSize,
    bool isRequired = false,
    double? bottomMarging,
  }) {
    return TextUI(
      text: text,
      textAlign: textAlign,
      textColor: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
      isRequired: isRequired,
      bottomMarging: bottomMarging ?? 5,
    );
  }
    static Widget formInput({
    String? hint,
    String? label = "",
    TextEditingController? controller,
    TextInputType? inputType = TextInputType.text,
    bool isPassword = false,
    String passwordChar = "*",
    bool isOptional = false,
    int? charLimit,
    TextCapitalization? textCapitalization,
    bool multiLines = false,
    AutovalidateMode? autovalidate,
    String? Function(String?)? validator,
    Function(String?)? onChange,
    Function(String?)? onSubmitted,
    Function()? onComplete,
    FocusNode? focusNode,
    InputAction? inputAction,
  }) {
    return FormInputUI(
      hint: hint,
      label: label,
      controller: controller,
      inputType: inputType,
      isPassword: isPassword,
      passwordChar: passwordChar,
      isOptional: isOptional,
      charLimit: charLimit,
      validator: validator,
      onChange: onChange,
      onSubmitted: onSubmitted,
      onComplete: onComplete,
      textCapitalization: textCapitalization,
      multiLines: multiLines,
      autovalidate: autovalidate,
      focusNode: focusNode,
      inputAction: inputAction,
    );
  }
    static Widget buttonLC({
    String? text,
    Function? onPressed,
    required IconData icon,
    ButtonSizeType sizeType = ButtonSizeType.medium,
    Color? bgColor,
    Color? iconColor,
  }) {
    return ButtonLargeCircularUI(
      text: text,
      onPressed: onPressed,
      icon: icon,
      sizeType: sizeType,
      bgColor: bgColor,
      iconColor: iconColor,
    );
  }

   static Widget button({
    required String text,
    required Function onPressed,
    bool isBlock = false,
    ButtonStyle? style,
    bool isNegative = false,
    bool isActive = true,
  }) {
    var btnStyle = style ?? AppTheme.buttonStyle;
    return ButtonUI(
      text: text,
      onPressed: onPressed,
      block: isBlock,
      style: btnStyle,
      isNegative: isNegative,
      isActive: isActive,
    );
  }


  }