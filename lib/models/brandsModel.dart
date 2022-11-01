import 'package:cashsecond/models/mobileModel.dart';

class Brands {
  Brands({
    required this.image,
    required this.name,
    required this.mobiles,
  });
  String name;
  String image;
  List<MobileModel> mobiles;
}

List<Brands> brands = [
  Brands(
      image: 'https://cashsecond.com/wp-content/uploads/2021/11/apple-1.png',
      name: 'Apple',
      mobiles: [
        MobileModel(
          phoneImage: 'https://cashsecond.com/wp-content/uploads/iPhone_11.jpg',
          phoneName: '11 Series',
        ),
        MobileModel(
          phoneImage: 'https://cashsecond.com/wp-content/uploads/iPhone_X.jpg',
          phoneName: 'X Series',
        ),
        MobileModel(
          phoneImage:
              'https://cashsecond.com/wp-content/uploads/iwatchseries3.png',
          phoneName: 'Apple iWatch',
        ),
        MobileModel(
          phoneImage: 'https://cashsecond.com/wp-content/uploads/airpod3.jpg',
          phoneName: 'AirPods',
        ),
      ]),
  Brands(
      image:
          'https://cashsecond.com/wp-content/uploads/2021/12/asus-1-e1640605468886.png',
      name: 'Asus',
      mobiles: [
        MobileModel(
          phoneImage: 'https://cashsecond.com/wp-content/uploads/Rog1.jpeg',
          phoneName: 'Rog Series',
        ),
        MobileModel(
          phoneImage:
              'https://cashsecond.com/wp-content/uploads/Zen_2_ZE551ML.jpeg',
          phoneName: 'Zen 2 Series',
        ),
        MobileModel(
          phoneImage:
              'https://cashsecond.com/wp-content/uploads/Zen3_Laser.jpeg',
          phoneName: 'Zen 3 Series',
        ),
        MobileModel(
          phoneImage:
              'https://cashsecond.com/wp-content/uploads/Zen_4Selfie_ZD553KL.jpeg',
          phoneName: 'Zen 4 Series',
        ),
      ]),
  Brands(
      image: 'https://cashsecond.com/wp-content/uploads/2021/12/black.png',
      name: 'BlackBerry',
      mobiles: [
        MobileModel(
          phoneImage: 'https://cashsecond.com/wp-content/uploads/bbDtek_50.jpg',
          phoneName: 'Dtek Series',
        ),
        MobileModel(
          phoneImage: 'https://cashsecond.com/wp-content/uploads/bbKeyone.jpg',
          phoneName: 'Keyone Series',
        ),
        MobileModel(
          phoneImage:
              'https://cashsecond.com/wp-content/uploads/bbPassport.jpg',
          phoneName: 'Passport Series',
        ),
        MobileModel(
          phoneImage: 'https://cashsecond.com/wp-content/uploads/bbPriv.jpg',
          phoneName: 'Priv',
        ),
      ]),
];
