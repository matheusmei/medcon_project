import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcon_project_college/presentation/login/mobx_login_presenter.dart';
import 'package:medcon_project_college/ui/components/medcon_button.dart';

class LoginButton extends StatelessWidget {
  final MobxLoginPresenter loginPresenter;

  const LoginButton({required this.loginPresenter, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MedConButton(
        onPressed: () async {
          await loginPresenter.signIn();
        },
        child: Text(
          'LOGIN',
          style: GoogleFonts.montserrat(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      );
    });
  }
}
