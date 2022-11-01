import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashsecond/models/brandsModel.dart';
import 'package:cashsecond/screens/tabs/mobiles.dart';
import 'package:cashsecond/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> banners = [
    'assets/images/mobibanner-1.png',
    'assets/images/mobibanner-2.png',
    'assets/images/mobibanner-3.png',
  ];
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var customHeight = MediaQuery.of(context).size.height;
    var customWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/logo.png',
          height: customHeight * 0.05,
          width: customWidth * 0.3,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            child: Stack(
              children: [
                const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Positioned(
                    left: 14,
                    child: Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: const Color(0xFF0063D1),
                          borderRadius: BorderRadius.circular(50)),
                      padding: const EdgeInsets.all(2),
                      child: const Center(
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: banners.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.asset(i);
                  },
                );
              }).toList(),
            ),
            verticalSpace(customHeight * 0.01),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                controller: searchController,
                keyboardType: TextInputType.text,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Search your phone',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.2),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red, width: 1.2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.2),
                  ),
                ),
              ),
            ),
            verticalSpace(customHeight * 0.015),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Or Select Brand to Sell your phone',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            verticalSpace(customHeight * 0.01),
            SizedBox(
              width: customWidth * 0.9,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: brands.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MobilesScreen(index: index);
                        }));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Material(
                          elevation: 5,
                          shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  brands[index].image,
                                  height: customHeight * 0.15,
                                  width: customWidth * 0.3,
                                ),
                                Text(brands[index].name),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            verticalSpace(customHeight * 0.05),
          ],
        ),
      ),
    );
  }
}
