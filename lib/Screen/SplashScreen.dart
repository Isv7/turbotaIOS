import 'package:app/Animation/hole_painter.dart';
import 'package:app/Animation/staggered_raindrop_animation.dart';
import 'package:app/blocs/authentication/AuthenticationBloc.dart';
import 'package:app/blocs/authentication/AuthenticationEvent.dart';
import 'package:app/generated/l10n.dart';
import 'package:app/services/navigation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({this.color});

  final Color color;

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Size size = Size.zero;
  AnimationController _controller;
  StaggeredRaindropAnimation _animation;
  final NavigationServiceSingleton _navigationService =
      NavigationServiceSingleton();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 3000), vsync: this);
    _animation = StaggeredRaindropAnimation(_controller);
    _controller.forward();

    _controller.addListener(() {
      setState(() {});
    });
    Future.delayed(Duration(milliseconds: 3000), () {
      BlocProvider.of<AuthenticationBloc>(context).add(AppLaunched());
    });
  }

  @override
  void didChangeDependencies() {
    setState(() {
      size = MediaQuery.of(context).size;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Scaffold(
          body: Center(
              child: Image.asset(
        "assets/img/Splash-Logo.png",
        width: 171,
        height: 173,
      ))),
      IgnorePointer(
          child: Stack(children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            child: CustomPaint(
                painter: HolePainter(
                    color: Colors.brown,
                    holeSize: _animation.holeSize.value * size.width))),
        Positioned(
            top: _animation.dropPosition.value * size.height,
            left: size.width / 2 - _animation.dropSize.value / 2,
            child: SizedBox(
                width: _animation.dropSize.value,
                height: _animation.dropSize.value,
                child: CustomPaint(
                  painter: DropPainter(visible: _animation.dropVisible.value),
                ))),
        Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Opacity(
                    opacity: _animation.textOpacity.value,
                    child: Text(S.of(context).Copyright_isv7,
                        style: Theme.of(context).textTheme.button))))
      ]))
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

class DropPainter extends CustomPainter {
  DropPainter({this.visible = true});

  bool visible;

  @override
  void paint(Canvas canvas, Size size) {
    if (!visible) {
      return;
    }

    Path path = new Path();
    path.moveTo(size.width / 2, 0);
    path.quadraticBezierTo(0, size.height * 0.8, size.width / 2, size.height);
    path.quadraticBezierTo(size.width, size.height * 0.8, size.width / 2, 0);
    canvas.drawPath(path, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
