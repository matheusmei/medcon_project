import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcon_project_college/presentation/signup/mobx_signup_presenter.dart';
import 'package:medcon_project_college/ui/components/medcon_button.dart';
import 'package:medcon_project_college/ui/login/login_view2.dart';

class SigUpButton extends StatelessWidget {
  final MobxSignUpPresenter signUpPresenter;
  const SigUpButton({required this.signUpPresenter, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MedConButton(
        onPressed: () async {
          await signUpPresenter.signUp().then(
                (_) => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginView2(),
                  ),
                ),
              );
        },
        child: Text(
          'Criar Conta',
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
