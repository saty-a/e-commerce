import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:ecommerce_app/utils/app_regex/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum FieldStyle { underline, box }

class CommonOtpTextField extends StatefulWidget {
  const CommonOtpTextField(
      {Key? key,
      this.length = 4,
      this.fieldWidth = 40,
      this.fieldHeight = 60,
      this.cursorWidth = 2,
      this.cursorHeight = 20,
      this.showCursor = true,
      this.cursorColor = AppColors.primary,
      this.margin = const EdgeInsets.symmetric(horizontal: 2),
      this.otpFieldStyle,
      this.keyboardType = TextInputType.number,
      this.style = const TextStyle(fontWeight: FontWeight.w800),
      this.outlineBorderRadius = 10,
      this.textFieldAlignment = MainAxisAlignment.spaceEvenly,
      this.obscureText = false,
      this.fieldStyle = FieldStyle.box,
      this.onChanged,
      this.onCompleted})
      : assert(length > 1);

  /// Number of the OTP Fields
  final int length;

  /// Width of the single OTP Field
  final double fieldWidth;

  /// Height of the single OTP Field
  final double fieldHeight;

  /// Width of the cursor
  final double cursorWidth;

  /// Height of the cursor
  final double cursorHeight;

  /// Color of the cursor
  final Color cursorColor;

  /// Color of the cursor
  final bool showCursor;

  /// Color of the cursor
  // final bool showErrorBorder;

  /// margin around the text fields
  final EdgeInsetsGeometry margin;

  /// Manage the type of keyboard that shows up
  final TextInputType keyboardType;

  /// The style to use for the text being edited.
  final TextStyle? style;

  /// The style to use for the text being edited.
  final double outlineBorderRadius;

  /// Text Field Style for field shape.
  /// default FieldStyle.underline [FieldStyle]
  final FieldStyle fieldStyle;

  /// Text Field Alignment
  /// default: MainAxisAlignment.spaceBetween [MainAxisAlignment]
  final MainAxisAlignment textFieldAlignment;

  /// Obscure Text if data is sensitive
  final bool obscureText;

  /// Text Field Style
  final OtpTextFieldStyle? otpFieldStyle;

  /// Callback function, called when a change is detected to the pin.
  final Function(String str)? onChanged;

  /// Callback function, called when pin is completed.
  final Function(String str)? onCompleted;

  @override
  _CommonOtpTextFieldState createState() => _CommonOtpTextFieldState();
}

class _CommonOtpTextFieldState extends State<CommonOtpTextField> {
  List<Widget>? _textFields;
  List<TextEditingController?>? _otpControllers;
  List<FocusNode?>? _focusNodes;
  List<String>? _otp;
  List<bool>? _checkEmpty;
  OtpTextFieldStyle? _otpFieldStyle;

  @override
  void initState() {
    super.initState();

    /// if otp field style is null then assign default style
    if (widget.otpFieldStyle == null) {
      _otpFieldStyle = OtpTextFieldStyle();
    } else {
      _otpFieldStyle = widget.otpFieldStyle!;
    }

    /// generate list of focus fields according to the length
    _focusNodes = List<FocusNode?>.filled(widget.length, null, growable: false);
    _checkEmpty = List<bool>.filled(widget.length, false, growable: false);

    /// generate list of otp controller according to the length
    _otpControllers = List<TextEditingController?>.filled(widget.length, null,
        growable: false);

    ///
    _otp = List.generate(widget.length, (int i) {
      print("Hello ${_otp}");
      return '';
    });

    /// generate list of otp text fields according to the length
    _textFields = List.generate(widget.length, (int i) {
      return _otpField(context, i);
    });
  }

  /// build
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: _textFields!);
  }

  /// otp field
  Widget _otpField(BuildContext context, int i) {
    /// check if focus node is null on particular index then initialise to new focus node
    if (_focusNodes![i] == null) _focusNodes![i] = FocusNode();

    /// check if otp controller is null on particular index then initialise it
    if (_otpControllers![i] == null) {
      _otpControllers![i] = TextEditingController(text: '');
      _otpControllers![i]!.selection = TextSelection.fromPosition(
          TextPosition(offset: _otpControllers![i]!.text.length)
          /* baseOffset: 1,
           extentOffset: 1*/
          );
    }
    return Container(
      width: widget.fieldWidth,
      height: widget.fieldHeight,
      margin: widget.margin,
      decoration: BoxDecoration(
          color: AppColors.grey,
          borderRadius: BorderRadius.circular(widget.outlineBorderRadius)),
      child: TextField(
        inputFormatters: [
          //   FilteringTextInputFormatter.allow(RegExp(r'(\u200b)')),
          // FilteringTextInputFormatter.8allow(RegExp(r'[0-9]')),
          FilteringTextInputFormatter.allow(AppRegex.digitsOnly),
        ],
        autofocus: false,
        cursorWidth: widget.cursorWidth,
        cursorHeight: widget.cursorHeight,
        cursorColor: widget.cursorColor,
        showCursor: widget.showCursor,
        keyboardType: widget.keyboardType,
        textAlign: TextAlign.center,
        style: widget.style,
        focusNode: _focusNodes![i],
        onChanged: (v) {
          onChange(v, _focusNodes![i], i);
        },
        obscureText: widget.obscureText,
        controller: _otpControllers![i],
        maxLength: 1,
        decoration: InputDecoration(
            counterText: "",
            border: _getBorder(_otpFieldStyle!.borderColor),
            focusedBorder: _getBorder(_otpFieldStyle!.focusBorderColor),
            enabledBorder: _getBorder(_otpFieldStyle!.enabledBorderColor),
            disabledBorder: _getBorder(_otpFieldStyle!.disabledBorderColor),
            errorBorder: _getBorder(_otpFieldStyle!.errorBorderColor)),
      ),
    );
  }

  /// onChange
  void onChange(String value, FocusNode? focusNode, int index) {
    var cursorPos = _otpControllers![index]!.selection.base.offset;
    debugPrint("Cursor Position ==>> $cursorPos");
    if (value.length == 2) {
      setState(() {
        _otp![index] = cursorPos == 2 ? value[1] : value[0];
        _otpControllers![index]!.text = cursorPos == 2 ? value[1] : value[0];
      });
    } else if (value.length > 1) {
      // _handlePaste(value,index);
      // return;
    } else {
      // Update the current pin
      setState(() {
        _otp![index] = value;
      });
    }

    /// Check if the current value at this position is empty
    /// If it is move focus to previous text field.
    if (value.isEmpty) {
      if (index == 0) return;
      _focusNodes![index]!.unfocus();
      _focusNodes![index - 1]!.requestFocus();
    }

    /// Remove focus
    if (value.isNotEmpty) {
      _focusNodes![index]!.unfocus();
    }
    if (index + 1 != widget.length && value.isNotEmpty) {
      FocusScope.of(context).requestFocus(_focusNodes![index + 1]);
    }

    String currentPin = _getCurrentPin();

    /// if there are no null values that means otp is completed
    /// Call the `onCompleted` callback function provided
    if (widget.onCompleted != null) {
      if (!_otp!.contains(null) &&
          !_otp!.contains('') &&
          currentPin.length == widget.length) {
        widget.onCompleted!(currentPin);
      }
    }

    /// Call the `onChanged` callback function
    if (widget.onChanged != null) {
      widget.onChanged!(currentPin);
    }
  }

  /// Text Field Border
  InputBorder _getBorder(Color color) {
    return widget.fieldStyle == FieldStyle.box
        ? OutlineInputBorder(
            borderSide: BorderSide(color: color, width: 2),
            borderRadius: BorderRadius.circular(widget.outlineBorderRadius))
        : UnderlineInputBorder(borderSide: BorderSide(color: color));
  }

  /// Disposing Text fields here.
  @override
  void dispose() {
    for (var controller in _otpControllers!) {
      controller!.dispose();
    }
    super.dispose();
  }

  /// HandlePaste
  void _handlePaste(String str, int index) {
    String currentPin = _getCurrentPin();
    print("crnt==>$currentPin");
    str = currentPin + str;
    print("str==>$currentPin");

    if (str.length > widget.length) {
      str = str.substring(0, widget.length);
    }
    for (int i = 0; i < str.length; i++) {
      String digit = str.substring(i, i + 1);
      _otpControllers![i]!.text = digit;
      _otp![i] = digit;
    }

    if (str.length < 6) {
      FocusScope.of(context).requestFocus(_focusNodes![str.length]);
    } else {
      FocusScope.of(context).requestFocus(_focusNodes![widget.length - 1]);
    }

    currentPin = _getCurrentPin();

    // if there are no null values that means otp is completed
    // Call the `onCompleted` callback function provided
    if (!_otp!.contains(null) &&
        !_otp!.contains('') &&
        currentPin.length == widget.length) {
      widget.onCompleted!(currentPin);
    }

    // Call the `onChanged` callback function
    widget.onChanged!(currentPin);
  }

  /// Get Current Pin
  String _getCurrentPin() {
    String currentPin = "";
    for (var value in _otp!) {
      currentPin += value;
    }
    return currentPin;
  }
}

/// Otp Field Style
class OtpTextFieldStyle {
  /// The background color for outlined box.
  final Color backgroundColor;

  /// The border color text field.
  final Color borderColor;

  /// The border color of text field when in focus.
  final Color focusBorderColor;

  /// The border color of text field when disabled.
  final Color disabledBorderColor;

  /// The border color of text field when in focus.
  final Color enabledBorderColor;

  /// The border color of text field when disabled.
  final Color errorBorderColor;

  OtpTextFieldStyle(
      {this.backgroundColor = Colors.transparent,
      this.borderColor = Colors.black26,
      this.focusBorderColor = AppColors.primary,
      this.disabledBorderColor = Colors.transparent,
      this.enabledBorderColor = Colors.transparent,
      this.errorBorderColor = Colors.red});
}
