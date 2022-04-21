import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<GridViewWidget> _item = <GridViewWidget>[
    const GridViewWidget(
      text: 'Rice',
      imageUrl: 'images/Group 3247.png',
      height: 22,
    ),
    const GridViewWidget(
      text: 'Dry Fruits',
      imageUrl: 'images/Dry Fruits.png',
      height: 0,
    ),
    const GridViewWidget(
      text: 'Atta',
      imageUrl: 'images/Atta.png',
      height: 0,
    ),
    const GridViewWidget(
      text: 'Juice',
      imageUrl: 'images/Img - Juice.png',
      height: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6F9),
      body: Padding(
        padding: const EdgeInsets.only(top: 22, left: 24),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Hi, Madbrains",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  Row(
                    children: const [
                      CircleAvatar(
                        child: Icon(Icons.local_grocery_store_outlined,
                            color: Colors.black, size: 20),
                        radius: 25,
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(width: 20),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Any food search here',
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            color: Color(0XFF818181),
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  width: 1, color: Colors.blue.shade500)),
                          suffixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 57,
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              height: 133,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisCount: 1,
                    mainAxisExtent: 100),
                itemBuilder: (context, index) {
                  return GridViewWidget(
                    text: _item[index].text,
                    imageUrl: _item[index].imageUrl,
                    height: _item[index].height,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'images/Bg.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Upto 40% Off',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff0EA44F)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'New Launches, Pulses, Atta\nRice & other Gains.',
                            style: TextStyle(fontSize: 13),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Order Now',
                              style: TextStyle(fontSize: 14),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0xffFB6D3A)),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Top Products',
                    style: TextStyle(fontSize: 20, color: Color(0xff36596A)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff36596A),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffA9B5C7)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 10,end: 15),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.green,
                  );
                },),
            )
          ],
        ),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    required this.text,
    required this.imageUrl,
    required this.height,
    Key? key,
  }) : super(key: key);
  final String imageUrl;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(imageUrl),
          SizedBox(
            height: height,
          ),
          Text(text),
        ],
      ),
    );
  }
}
