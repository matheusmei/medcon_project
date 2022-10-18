import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcon_project_college/presentation/login/mobx_login_presenter.dart';
import 'package:medcon_project_college/ui/signup/components/medcon_signup_dialog.dart';
import 'package:medcon_project_college/ui/signup/signup_view.dart';
import '../../presentation/signup/mobx_signup_presenter.dart';
import '../theme/theme_colors_app.dart';
import 'components/medcon_login_dialog.dart';

class LoginView2 extends StatelessWidget {
  final loginPresenter = MobxLoginPresenter();
  final signUpPresenter = MobxSignUpPresenter();
  LoginView2({Key? key}) : super(key: key);

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MedconLoginDialog(
                loginPresenter: loginPresenter,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpView(),
                    ),
                  );
                },
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
