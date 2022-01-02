import 'package:flutter/material.dart';
typedef ImContainerCallback = Function();
class ImContainer extends StatefulWidget {
  const ImContainer({
    Key? key,
    this.height = 120.0,
    this.width,
    this.color1,
    this.color2,
    this.title = "Title",
    this.textcolor,
    this.subtitle = "This is a new package",
    this.subtitlecolor,
    this.onTap,
    this.padding,
  }) : super(key: key);

  final double? width;
  final double height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textcolor;
  final String subtitle;
  final Color? subtitlecolor;
  final ImContainerCallback? onTap;
  final EdgeInsetsGeometry? padding;

  @override
  _ImContainerState createState() => _ImContainerState();
}

class _ImContainerState extends State<ImContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap!() ?? (){},
      child: Container(
        width: widget.width??MediaQuery.of(context).size.width * 0.90,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          gradient: LinearGradient(
              colors: [widget.color1??Color(0xFFCB1841), widget.color2??Color(0xFF2604DE)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 12,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                '${widget.title}',
                style: TextStyle(
                  color: widget.textcolor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                widget.subtitle,
                style: TextStyle(
                  color: widget.subtitlecolor,
                  fontSize: 15.0,
                  // fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
