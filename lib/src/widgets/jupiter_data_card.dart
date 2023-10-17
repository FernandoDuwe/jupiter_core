import "package:flutter/material.dart";

class JupiterDataCard extends StatelessWidget {
  final Widget? background;
  final String title;
  final String subTitle;
  final double? height;
  final double? width;
  final double? elevation;
  final Color? backgroundColor;
  final VoidCallback? onClick;
  final BoxDecoration? decoration;
  final Color? fontColor;
  final double? titleFontSize;
  final double? subTitleFontSize;

  const JupiterDataCard(
      {required this.title,
      required this.subTitle,
      this.height,
      this.width,
      this.elevation,
      this.backgroundColor,
      this.onClick,
      this.background,
      this.decoration,
      this.fontColor,
      this.titleFontSize,
      this.subTitleFontSize,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: (elevation ?? 10),
      color: this.backgroundColor,
      child: GestureDetector(
        onTap: this.onClick,
        child: Container(
          decoration: this.decoration,
          height: (height ?? 100),
          width: (width ?? 300),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              (this.background ?? Container()),
              Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    this.title,
                    style: TextStyle(
                        fontSize: (this.titleFontSize ?? 16),
                        color: this.fontColor),
                  )),
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: Text(
                    this.subTitle,
                    style: TextStyle(
                        fontSize: (this.subTitleFontSize ?? 25),
                        color: this.fontColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
