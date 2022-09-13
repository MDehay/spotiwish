import 'package:flutter/material.dart';

class CoverAlbum extends StatelessWidget {
  const CoverAlbum({Key? key, required this.asset_path}) : super(key: key);
  final String asset_path;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: MediaQuery.of(context).size.height * .5,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage(
            asset_path,
          ),
        ),
      ),
    );
  }
}
