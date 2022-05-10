import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quickserve/auth/choose_sign.dart';
import 'package:quickserve/auth/sign_up.dart';
import 'package:quickserve/config/constants.dart';
import 'package:quickserve/library/flutter_overboard/circular_clipper.dart';
import 'package:quickserve/library/flutter_overboard/overboard_animator.dart';
import 'package:quickserve/models/onboarding/page_model.dart';
import 'package:quickserve/reusables/cache_image_network.dart';

enum SwipeDirection { leftToRight, rightToLeft, skipToLast }

class OverBoard extends StatefulWidget {
  final List<PageModel> pages;
  final Offset? center;
  final bool? showBullets;
  final VoidCallback finishCallback;
  final VoidCallback? skipCallback;
  final OverBoardAnimator? animator;
  final String? skipText, nextText, finishText;

  const OverBoard(
      {Key? key,
      required this.pages,
      this.center,
      this.showBullets,
      this.skipText,
      this.nextText,
      this.finishText,
      required this.finishCallback,
      this.animator,
      this.skipCallback})
      : super(key: key);

  @override
  _OverBoardState createState() => _OverBoardState();
}

class _OverBoardState extends State<OverBoard> with TickerProviderStateMixin {
  late OverBoardAnimator _animator;

  final ScrollController _scrollController = ScrollController();
  double _bulletPadding = 5.0, _bulletSize = 10.0, _bulletContainerWidth = 0;

  int _counter = 0, _last = 0;
  int _total = 0;
  double initial = 0, distance = 0;
  Random random = Random();
  SwipeDirection _swipeDirection = SwipeDirection.rightToLeft;

  @override
  void initState() {
    super.initState();

    _animator = OverBoardAnimator(this);
    _total = widget.pages.length;
    _animate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
      ),
      child: _getStack(),
    );
  }

  _getStack() {
    return GestureDetector(
      onPanStart: (DragStartDetails details) {
        initial = details.globalPosition.dx;
      },
      onPanUpdate: (DragUpdateDetails details) {
        distance = details.globalPosition.dx - initial;
      },
      onPanEnd: (DragEndDetails details) {
        initial = 0.0;
        setState(() {
          _last = _counter;
        });
        if (distance > 1 && _counter > 0) {
          setState(() {
            _counter--;
            _swipeDirection = SwipeDirection.leftToRight;
          });
          _animate();
        } else if (distance < 0 && _counter < _total - 1) {
          setState(() {
            _counter++;
            _swipeDirection = SwipeDirection.rightToLeft;
          });
          _animate();
        }
      },
      child: Stack(
        children: <Widget>[
          _getPage(_last),
          AnimatedBuilder(
            animation: _animator.getAnimator(),
            builder: (context, child) {
              return ClipOval(
                  clipper: CircularClipper(
                      _animator.getAnimator().value, widget.center),
                  child: _getPage(_counter));
            },
            child: Container(),
          ),
        ],
      ),
    );
  }

  _getPage(index) {
    PageModel page = widget.pages[index];
    return Container(
      decoration: const BoxDecoration(
        color: primaryColor,
      ),
      width: double.infinity,
      height: double.infinity,
      child: page.child != null
          ? Center(
              child: page.doAnimateChild!
                  ? AnimatedBoard(
                      animator: _animator,
                      child: page.child,
                    )
                  : page.child,
            )
          : Container(
              decoration: const BoxDecoration(
                color: primaryColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 20,
                            offset: const Offset(0, 0))
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                            child: page.doAnimateImage!
                                ? AnimatedBoard(
                                    animator: _animator,
                                    child: Image.asset(page.imageAssetPath!,
                                        width: 400.0, height: 400.0))
                                : Image.asset(page.imageAssetPath!,
                                    width: 400.0, height: 400.0)),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 0.0,
                                  bottom: 16.0,
                                  left: 16.0,
                                  right: 16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      page.title!,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          color: primaryDark,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text(
                                    ' ' + page.highlightTitle!,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: primaryDark,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 40.0, left: 20.0, right: 20.0),
                              child: Text(
                                page.body!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: primaryDark.withOpacity(0.5),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                child: Center(child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    _bulletContainerWidth =
                                        constraints.maxWidth - 40.0;
                                    return Container(
                                      padding: const EdgeInsets.all(20.0),
                                      child: ((widget.showBullets ?? true)
                                          ? SingleChildScrollView(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              scrollDirection: Axis.horizontal,
                                              controller: _scrollController,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  for (int i = 0;
                                                      i < _total;
                                                      i++)
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                          _bulletPadding),
                                                      child: AnimatedContainer(
                                                          duration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      150),
                                                          height: _bulletSize,
                                                          width: (i == _counter)
                                                              ? _bulletSize * 4
                                                              : _bulletSize,
                                                          decoration: BoxDecoration(
                                                              color: (i ==
                                                                      _counter)
                                                                  ? primaryColor
                                                                  : primaryColor
                                                                      .withOpacity(
                                                                          0.3),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                    )
                                                ],
                                              ),
                                            )
                                          : Container()),
                                    );
                                  },
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 40.0, bottom: 16.0, left: 16.0, right: 16.0),
                        child: GestureDetector(
                          onTap: () {
                            widget.finishCallback;
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => const ChooseSign()),
                                (Route<dynamic> route) => false);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Center(
                                child: Text(
                                  'Get Started',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(-0.3, -0.3),
                                          color: Color.fromARGB(
                                              255, 116, 115, 115),
                                        ),
                                        Shadow(
                                          offset: Offset(0.3, -0.3),
                                          color: Color.fromARGB(
                                              255, 116, 115, 115),
                                        ),
                                        Shadow(
                                          offset: Offset(0.3, 0.3),
                                          color: Color.fromARGB(
                                              255, 116, 115, 115),
                                        ),
                                        Shadow(
                                          offset: Offset(-0.3, 0.3),
                                          color: Color.fromARGB(
                                              255, 116, 115, 115),
                                        ),
                                      ],
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }

  _next() {
    setState(() {
      _swipeDirection = SwipeDirection.rightToLeft;
      _last = _counter;
      _counter++;
    });
    _animate();
  }

  _skip() {
    setState(() {
      _swipeDirection = SwipeDirection.skipToLast;
      _last = _counter;
      _counter = _total - 1;
    });
    _animate();
  }

  _animate() {
    _animator.getController().forward(from: 0.0);

    double _bulletDimension = (_bulletPadding * 2) + (_bulletSize);
    double _scroll = _bulletDimension * _counter;
    double _maxScroll = _bulletDimension * _total - 1;
    if (_scroll > _bulletContainerWidth &&
        _swipeDirection == SwipeDirection.rightToLeft) {
      double _scrollDistance =
          (((_scroll - _bulletContainerWidth) ~/ _bulletDimension) + 1) *
              _bulletDimension;
      _scrollController.animateTo(_scrollDistance,
          curve: Curves.easeIn, duration: const Duration(milliseconds: 100));
    } else if (_scroll < (_maxScroll - _bulletContainerWidth) &&
        _swipeDirection == SwipeDirection.leftToRight) {
      _scrollController.animateTo(_scroll,
          curve: Curves.easeIn, duration: const Duration(milliseconds: 100));
    } else if (_swipeDirection == SwipeDirection.skipToLast) {
      _scrollController.animateTo(_maxScroll,
          curve: Curves.easeIn, duration: const Duration(milliseconds: 100));
    }
  }
}

class AnimatedBoard extends StatelessWidget {
  final Widget? child;
  final OverBoardAnimator? animator;

  const AnimatedBoard({Key? key, this.animator, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.translationValues(
          0.0, 50.0 * (1.0 - animator!.getAnimator().value), 0.0),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: child,
      ),
    );
  }
}
