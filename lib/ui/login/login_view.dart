import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcon_project_college/ui/components/medcon_login_dialog.dart';
import 'package:medcon_project_college/ui/theme/theme_colors_app.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ThemeColorsApp.firstGradientBackground,
            ThemeColorsApp.secondGradientBackground,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const MedconLoginDialog(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Criar uma Conta',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    color: ThemeColorsApp.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
