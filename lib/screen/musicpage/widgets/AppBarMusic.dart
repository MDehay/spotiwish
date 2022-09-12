import 'package:flutter/material.dart';

class AppBarMusic extends StatelessWidget with PreferredSizeWidget{
  const AppBarMusic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {
          print("EXIT");
        },
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      actions: [
        IconButton(
          onPressed: () {
            print("Settings");
          },
          icon: const Icon(Icons.more_vert),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
