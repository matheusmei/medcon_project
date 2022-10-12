import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medcon_project_college/ui/components/medcon_text_field.dart';
import 'package:medcon_project_college/ui/theme/theme_colors_app.dart';

class MedconLoginDialog extends StatefulWidget {
  const MedconLoginDialog({Key? key}) : super(key: key);

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
                const Spacer(),
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
                      const MedConTextField(
                        labelText: 'Email',
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const MedConTextField(
                        labelText: 'Password',
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
