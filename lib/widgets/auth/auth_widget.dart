import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 0, 45),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
            
          },
        ),
        title: Text(
          'Log In',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Log in with',
              style: GoogleFonts.roboto(
                color: const Color.fromARGB(255, 185, 173, 173),
                fontSize: 11,
              ),
            ),
            SizedBox(height: 10),
            ServicesWidget(),
            SizedBox(height: 40),
            FormWidget(),
            SizedBox(height: 5),
            ForgotPasswordButtonWidget(),
            SizedBox(height: 40),
            LogInButtonWidget(),
            SizedBox(height: 20),
            SignUpButton(),
          ],
        ),
      ),
    );
  }
}

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 160,
          height: 55,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: const Color.fromARGB(255, 43, 43, 43),
              border: Border.all(color: Colors.white, width: 0.2)),
          child: const FaIcon(
            FontAwesomeIcons.google,
            color: Colors.white,
          ),
        ),
        Container(
          width: 160,
          height: 55,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: const Color.fromARGB(255, 43, 43, 43),
              border: Border.all(color: Colors.white, width: 0.2)),
          child: const FaIcon(
            FontAwesomeIcons.apple,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  void _auth() {

  }

  void _forgotPassword() {
    
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.roboto(
      color: Colors.white,
      fontSize: 14,
    );
    final textFieldDecoration = const InputDecoration(
      border: OutlineInputBorder(),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: textStyle),
        SizedBox(height: 5),
        GradientBorderTextField(
          hintText: 'Enter your email',
          obscureText: false,
        ),
        SizedBox(height: 25),
        Text('Password', style: textStyle),
        SizedBox(height: 5),
        GradientBorderTextField(
          hintText: 'Enter your password',
          obscureText: true,
        ),
      ],
    );
  }
}

class GradientBorderTextField extends StatelessWidget {
  final String hintText; // Параметр для текста подсказки
  final bool obscureText;

  GradientBorderTextField(
      {required this.hintText, required this.obscureText}); // Конструктор

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.roboto(
      color: const Color.fromARGB(255, 185, 173, 173),
      fontSize: 14,
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40), // Закругленные углы
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(244, 45, 146, 1),
            Color.fromRGBO(83, 171, 255, 1)
          ], // Градиентные цвета
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      padding: EdgeInsets.all(2), // Отступ для градиентной обводки
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(
              255, 43, 43, 43), // Серый цвет фона для TextField
          borderRadius: BorderRadius.circular(40), // Закругленные углы
        ),
        child: TextField(
          obscureText: obscureText,
          style: GoogleFonts.roboto(color: Colors.white, fontSize: 14),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent, // Прозрачный фон для TextField
            border: OutlineInputBorder(
              borderRadius:
                  BorderRadius.circular(20), // Закругленные углы для TextField
              borderSide: BorderSide.none, // Убираем стандартную обводку
            ),
            hintText: hintText, // Используем переданный текст подсказки
            hintStyle: textStyle,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordButtonWidget extends StatelessWidget {
  const ForgotPasswordButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Forgot password?',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
                top: 1), // Отступ между текстом и подчеркиванием
            height: 0.5, // Высота подчеркивания
            width: 110, // Ширина подчеркивания (можно настроить)
            color: Colors.white, // Цвет подчеркивания
          ),
        ],
      ),
    );
  }
}

class LogInButtonWidget extends StatelessWidget {
  const LogInButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.roboto(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 18,
    );
    return Container(
      child: Text('Log In', style: textStyle),
      width: double.infinity,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 232, 123, 251),
            Color.fromARGB(255, 193, 10, 183)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpStyle = GoogleFonts.roboto(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
    final dontHaveAccStyle = GoogleFonts.roboto(
      color: const Color.fromARGB(255, 185, 173, 173),
      fontSize: 14,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account?',
          style: dontHaveAccStyle,
        ),
        TextButton(
          onPressed: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Sign up',
                style: signUpStyle,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 0.1), // Отступ между текстом и подчеркиванием
                height: 0.5, // Высота подчеркивания
                width: 45, // Ширина подчеркивания (можно настроить)
                color: Colors.white, // Цвет подчеркивания
              ),
            ],
          ),
        ),
      ],
    );
  }
}
