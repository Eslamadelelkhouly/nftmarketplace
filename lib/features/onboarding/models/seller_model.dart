class SellerModel {
  final String imageurl;
  final String title;
  final String subtitle;
  final String txticon;
  final String txtnumber;

  SellerModel(
      {required this.imageurl,
      required this.title,
      required this.subtitle,
      required this.txticon,
      required this.txtnumber});
}

List<SellerModel> modelofseller = [
  SellerModel(
    imageurl: 'assets/images/img1.jpeg',
    title: '3d',
    subtitle: 'sub3d',
    txticon: 'view1',
    txtnumber: '50',
  ),
  SellerModel(
    imageurl: 'assets/images/img2.jpeg',
    title: 'sofiy',
    subtitle: 'music',
    txticon: 'view2',
    txtnumber: '30',
  ),
  SellerModel(
    imageurl: 'assets/images/img3.jpeg',
    title: 'ocean',
    subtitle: 'con',
    txticon: 'view3',
    txtnumber: '80',
  ),
];
