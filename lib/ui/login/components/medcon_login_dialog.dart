import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcon_project_college/presentation/login/mobx_login_presenter.dart';
import 'package:medcon_project_college/ui/components/medcon_text_field.dart';
import 'package:medcon_project_college/ui/login/components/login_button.dart';
import 'package:medcon_project_college/ui/theme/theme_colors_app.dart';

class MedconLoginDialog extends StatefulWidget {
  final MobxLoginPresenter loginPresenter;

  const MedconLoginDialog({required this.loginPresenter, Key? key})
      : super(key: key);

  @override
  State<MedconLoginDialog> createState() => _MedconLoginDialogState();
}

class _MedconLoginDialogState extends State<MedconLoginDialog> {
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
                        'Bem vindo(a)',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                            color: ThemeColorsApp.firstGradientBackground),
                      ),
                      MedConTextField(
                        labelText: 'Email',
                        onChanged: widget.loginPresenter.changeEmail,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      MedConTextField(
                        labelText: 'Password',
                        onChanged: widget.loginPresenter.changePassword,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      LoginButton(
                        loginPresenter: widget.loginPresenter,
                      )
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
