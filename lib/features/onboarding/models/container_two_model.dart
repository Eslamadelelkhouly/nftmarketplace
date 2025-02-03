import 'package:nftmarketplace/core/resources/asset_image_manger.dart';

class ContainerTwoModel {
  final String imagecontainer;
  final String title;

  ContainerTwoModel({required this.imagecontainer, required this.title});
}

List<ContainerTwoModel> containerOfList = [
  ContainerTwoModel(
    imagecontainer: AssetImageManger.image1card2,
    title: '3D Art',
  ),
  ContainerTwoModel(
    imagecontainer: AssetImageManger.image2card2,
    title: 'Abstract Art',
  ),
  ContainerTwoModel(
    imagecontainer: AssetImageManger.image3card2,
    title: 'Portrait Art',
  ),
];
