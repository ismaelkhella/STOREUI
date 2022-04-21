import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:grocerystore/screens/widgets/item_data.dart';
import 'package:grocerystore/screens/widgets/item_widget.dart';
import 'package:lottie/lottie.dart';

class WalkThroughScreen1 extends StatelessWidget {
  const WalkThroughScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WalkThroughScreens();
  }
}

class WalkThroughScreens extends StatefulWidget {
  WalkThroughScreens({Key? key}) : super(key: key);

  @override
  State<WalkThroughScreens> createState() => _WalkThroughScreensState();
}

class _WalkThroughScreensState extends State<WalkThroughScreens> {
  late PageController _pageController;

  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  final data = [
    ItemData(
      title: "Welcome",
      subtitle:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
      image: const AssetImage('images/Image 54.png'),
      backgroundColor: Colors.white,
      titleColor: Colors.purple,
      subtitleColor:  Colors.black,
      background: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_bq485nmk.json'),
    ),
    ItemData(
      title: "Welcome",
      subtitle:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
      image: const AssetImage('images/Image 55.png'),
      backgroundColor:  Color(0xffFF8236),
      titleColor: Colors.teal,
      subtitleColor: Colors.white,
      background: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_bq485nmk.json'),
    ),
    ItemData(
      title: "Welcome",
      subtitle:
          "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
      image: const AssetImage('images/Image 56.png'),
      backgroundColor: Colors.white,
      titleColor: Colors.red.shade400,
      subtitleColor: Colors.black,
      background: Lottie.network(
          'https://assets2.lottiefiles.com/packages/lf20_bq485nmk.json'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          ConcentricPageView(
            onChange: (value) {
              setState(() {
                _currentPageIndex = value;
              });
            },
            pageController: _pageController,
            radius: 50,
            colors: data.map((e) => e.backgroundColor).toList(),
            itemCount: data.length,
            itemBuilder: (index, double value) {
              return ItemWidget(data: data[index]);
            },
          ),
          Container(
            margin: const EdgeInsetsDirectional.only(top: 50, end: 10),
            alignment: AlignmentDirectional.topEnd,
            child: Visibility(
              visible: _currentPageIndex >1,
              replacement: TextButton(
                onPressed: () {
                  _pageController.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeInOut);
                },
                child: const Text(
                  'SKIP',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login_screen');
                },
                child: const Text(
                  'START',
                  style: TextStyle(fontSize: 18),
                ),
                style:
                    TextButton.styleFrom(padding: EdgeInsetsDirectional.zero),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Visibility(
                    visible: _currentPageIndex != 0,
                    maintainState: true,
                    maintainAnimation: true,
                    maintainSize: true,
                    child: IconButton(
                      onPressed: () {
                        _pageController.previousPage(
                            duration: const Duration(microseconds: 150000),
                            curve: Curves.easeIn);
                      },
                      color: _currentPageIndex == 0 ? Colors.grey : Colors.black,
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  Visibility(
                    visible: _currentPageIndex != 2,
                    maintainState: true,
                    maintainAnimation: true,
                    maintainSize: true,
                    child: IconButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(microseconds: 150000),
                            curve: Curves.easeInOut);
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                      color: _currentPageIndex == 2 ? Colors.grey : Colors.black,
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, bottom: 30, top: 20),
                child: Visibility(
                  visible: _currentPageIndex == 2,
                  maintainState: true,
                  maintainAnimation: true,
                  maintainSize: true,
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/login_screen'),
                    child:  Text('START'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFF8236),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

// Scaffold(
// body: Stack(
// children: [
// Image.asset(
// 'images/Image 55.png',
// alignment: Alignment.topCenter,
// fit: BoxFit.fill,
// height: 634,
// ),
// Container(
// alignment: AlignmentDirectional.topEnd,
// margin:  const EdgeInsetsDirectional.only(top: 50,end: 24),
// child: TextButton(
// onPressed: () {},
// child: const Text(
// 'Skip',
// style: TextStyle(color: Colors.white,fontSize: 18),
// ),
// ),
// ),
// Align(
// alignment: AlignmentDirectional.bottomCenter,
// child: Container(
// height: 264,
// decoration: const BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(70),
// ),
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// const SizedBox(
// height: 30,
// ),
// const Text(
// 'Welcome',
// style: TextStyle(
// fontSize: 30,
// ),
// textAlign: TextAlign.center,
// ),
// const SizedBox(
// height: 10,
// ),
// const Text(
// 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.',
// style: TextStyle(
// fontSize: 18,
// ),
// textAlign: TextAlign.center,
// ),
// const SizedBox(
// height: 50,
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// height: 10,
// width: 18,
// decoration: BoxDecoration(
// color: const Color(0XFFE3E3EF),
// borderRadius: BorderRadius.circular(10)),
// ),
// const SizedBox(
// width: 10,
// ),
// Container(
// height: 10,
// width: 18,
// decoration: BoxDecoration(
// color: const Color(0XFFE3E3EF),
// borderRadius: BorderRadius.circular(10)),
// ),
// const SizedBox(
// width: 10,
// ),
// Container(
// height: 10,
// width: 18,
// decoration: BoxDecoration(
// color: const Color(0XFFE3E3EF),
// borderRadius: BorderRadius.circular(10)),
// ),
// ],
// ),
// ],
// ),
// ),
// )
// ],
// ),
// );
