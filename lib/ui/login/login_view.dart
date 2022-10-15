import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcon_project_college/presentation/login/mobx_login_presenter.dart';
import 'package:medcon_project_college/ui/login/components/medcon_login_dialog.dart';
import 'package:medcon_project_college/ui/theme/theme_colors_app.dart';

class LoginView extends StatefulWidget {
  final MobxLoginPresenter loginPresenter;

  const LoginView({
     required this.loginPresenter,
    Key? key}) : super(key: key);

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
        body: Stack(
          children: <Widget> [
            Column( 
              children: [
                Positioned(
                  top: 503,
                  right: 0,
                  child: MedconLoginDialog(
                    loginPresenter: widget.loginPresenter,
                  ),
                ),
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
            ),]
        ),
      ),
    );
  }
}
