import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcon_project_college/presentation/login/mobx_login_presenter.dart';
import 'package:medcon_project_college/ui/components/medcon_text_field.dart';
import 'package:medcon_project_college/ui/login/components/login_button.dart';
import 'package:medcon_project_college/ui/signup/components/signup_button.dart';
import 'package:medcon_project_college/ui/theme/theme_colors_app.dart';

import '../../../presentation/signup/mobx_signup_presenter.dart';

class MedconSignUpDialog extends StatefulWidget {
  final MobxSignUpPresenter signUpPresenter;

  const MedconSignUpDialog({required this.signUpPresenter, Key? key})
      : super(key: key);

  @override
  State<MedconSignUpDialog> createState() => _MedconLoginDialogState();
}

class _MedconLoginDialogState extends State<MedconSignUpDialog> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: InkWell(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                      color: ThemeColorsApp.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Crie sua Conta',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                            color: ThemeColorsApp.firstGradientBackground),
                      ),
                      Observer(builder: (_) {
                        return MedConTextField(
                          labelText: 'Nome',
                          onChanged: widget.signUpPresenter.changeFirstName,
                        );
                      }),
                      const SizedBox(
                        height: 8,
                      ),
                      Observer(builder: (_) {
                        return MedConTextField(
                          labelText: 'Sobrenome',
                          onChanged: widget.signUpPresenter.changeLastName,
                        );
                      }),
                      const SizedBox(
                        height: 8,
                      ),
                      Observer(builder: (_) {
                        return MedConTextField(
                          labelText: 'Idade',
                          onChanged: widget.signUpPresenter.changeAge,
                        );
                      }),
                      const SizedBox(
                        height: 8,
                      ),
                      Observer(builder: (_) {
                        return MedConTextField(
                          labelText: 'Email',
                          onChanged: widget.signUpPresenter.changeEmail,
                        );
                      }),
                      const SizedBox(
                        height: 8,
                      ),
                      Observer(builder: (_) {
                        return MedConTextField(
                          labelText: 'Password',
                          onChanged: widget.signUpPresenter.changePassword,
                        );
                      }),
                      const SizedBox(
                        height: 8,
                      ),
                      Observer(builder: (_) {
                        return MedConTextField(
                          labelText: 'Genêro',
                          onChanged: widget.signUpPresenter.changeGender,
                        );
                      }),
                      //sigup button
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Observer(builder: (_) {
                  return SigUpButton(
                    signUpPresenter: widget.signUpPresenter,
                  );
                }),
              ]),
        ),
      ),
    );
  }
}
