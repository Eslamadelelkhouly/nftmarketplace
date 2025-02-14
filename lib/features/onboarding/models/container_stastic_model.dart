import 'package:nftmarketplace/core/resources/asset_image_manger.dart';

class ContainerStasticModel {
  final String count;
  final String title;
  final String money;
  final String precentage;
  final String imageurl;

  ContainerStasticModel({
    required this.count,
    required this.title,
    required this.imageurl,
    required this.money,
    required this.precentage,
  });
}

List<ContainerStasticModel> containerstasticmodelList = [
  ContainerStasticModel(
    count: '1',
    title: 'Azumi',
    imageurl: AssetImageManger.cat1,
    money: '200055.02',
    precentage: '33,79%',
  ),
  ContainerStasticModel(
    count: '2',
    title: 'Hape prime',
    imageurl: AssetImageManger.cat2,
    money: '18055.45',
    precentage: '33,7%',
  ),
  ContainerStasticModel(
    count: '3',
    title: 'Cryoto',
    imageurl: AssetImageManger.cat3,
    money: '90055.62',
    precentage: '-6,56%',
  ),
  ContainerStasticModel(
    count: '4',
    title: 'Ape Club',
    imageurl: AssetImageManger.cat4,
    money: '88055.12',
    precentage: '3,99%',
  ),
  ContainerStasticModel(
    count: '5',
    title: 'Bat',
    imageurl: AssetImageManger.cat5,
    money: '10055.06',
    precentage: '3,99%',
  ),
];
