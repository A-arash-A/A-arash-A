import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotelbook/screens/datas_sheet.dart';

class DetailSheet extends StatefulWidget {
  const DetailSheet({Key? key}) : super(key: key);

  @override
  _DetailSheetState createState() => _DetailSheetState();
}

class _DetailSheetState extends State<DetailSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _duration = const Duration(milliseconds: 500);
  final Tween<Offset> _tween =
      Tween(begin: const Offset(0, 1), end: const Offset(0, 0));
  bool isVisible = true;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _duration);
  }

  @override
  Widget build(BuildContext context) {
    String _float_image = 'datas/images/Vector_arrow_up.png';
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        child: Visibility(
          visible: isVisible,
          child: FloatingActionButton(
            child: Image.asset(_float_image),
            elevation: 5,
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            onPressed: () async {
              if (_controller.isDismissed) {
                setState(() {
                  _float_image = 'datas/images/Vector_arrow_down.png';
                  isVisible = false;
                });
                _controller.forward();
              } else if (_controller.isCompleted) {
                _controller.reverse();
                isVisible = true;
              }
            },
          ),
        ),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (move) {
          int sensitivity = 5;
          if (move.delta.dy > sensitivity) {
            //Down Swipe
            _controller.reverse();
            setState(() {
              isVisible = true;
            });
          } else if (move.delta.dy < -sensitivity) {
            // Up Swipe
            _controller.forward();
            setState(() {
              isVisible = false;
            });
          }
        },
        child: SizedBox.expand(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'datas/images/for_home/1.png',
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('you thapped the back arrow');
                }, //define what you want the button do
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      SvgPicture.asset('datas/icons/detail_page/heart.svg'),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('you tapped the right arrow');
                }, //define what you want the button do
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                            'datas/icons/detail_page/arrow_right.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox.expand(
                child: SlideTransition(
                  position: _tween.animate(_controller),
                  child: DraggableScrollableSheet(
                    minChildSize: 0.3,
                    initialChildSize: 0.5,
                    maxChildSize: 0.7,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60.0),
                            topRight: Radius.circular(60.0),
                          ),
                        ),
                        child: DatasSheet(
                          scrollController: scrollController,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
