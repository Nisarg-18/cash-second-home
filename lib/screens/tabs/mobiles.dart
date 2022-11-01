import 'package:cashsecond/models/brandsModel.dart';
import 'package:cashsecond/widgets/customWidgets.dart';
import 'package:flutter/material.dart';

class MobilesScreen extends StatefulWidget {
  final index;
  const MobilesScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<MobilesScreen> createState() => _MobilesScreenState();
}

class _MobilesScreenState extends State<MobilesScreen> {
  @override
  Widget build(BuildContext context) {
    var customHeight = MediaQuery.of(context).size.height;
    var customWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          brands[widget.index].name,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: customWidth * 0.9,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: brands[widget.index].mobiles.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 5,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
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
                                    brands[widget.index]
                                        .mobiles[index]
                                        .phoneImage,
                                    height: customHeight * 0.15,
                                    width: customWidth * 0.3,
                                  ),
                                  verticalSpace(customHeight * 0.01),
                                  Text(brands[widget.index]
                                      .mobiles[index]
                                      .phoneName),
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
      ),
    );
  }
}
