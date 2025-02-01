import 'package:nftmarketplace/core/resources/asset_image_manger.dart';

class ContainerOneModel {
  final String image;
  final String title;

  ContainerOneModel({required this.image, required this.title});
}

List<ContainerOneModel> containeronemodelList = [
  ContainerOneModel(
    image: AssetImageManger.Image1ContainerOne,
    title: 'Art',
  ),
  ContainerOneModel(
    image: AssetImageManger.Image2ContainerOne,
    title: 'Music',
  ),
  ContainerOneModel(
    image: AssetImageManger.Image3ContainerOne,
    title: 'Player',
  ),
];
