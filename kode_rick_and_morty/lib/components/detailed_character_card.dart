import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kode_rick_and_morty/models/detailed_character.dart';
import 'package:kode_rick_and_morty/theme/app_colors.dart';

class DetailedCharacterCard extends StatelessWidget {
  const DetailedCharacterCard({Key? key, required this.detailedCharacter})
      : super(key: key);

  final DetailedCharacter detailedCharacter;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: AppColors.primaryColorLight,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 7.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(detailedCharacter.image),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
                    child: Text(
                      "${detailedCharacter.name.toUpperCase()}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "${detailedCharacter.status} - (${detailedCharacter.species}) ",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Last Known Location - ${detailedCharacter.location.name}",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
