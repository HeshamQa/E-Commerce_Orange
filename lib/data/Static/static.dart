import '../../Model/CategoriesModel.dart';
import '../../Model/FavoriteModel.dart';
import '../../Model/PopularModel.dart';
import '../../Model/SpecialModel.dart';
import '../../Model/onBoardingModel.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "TOKOTO",
      body: "Welcome to Tokoto,Let's Shop!",
      image: "assets/images/splash_1.png"),
  OnBoardingModel(
      title: "TOKOTO",
      body: "Welcome to Tokoto,Let's Shop!",
      image: "assets/images/splash_2.png"),
  OnBoardingModel(
      title: "TOKOTO",
      body: "Welcome to Tokoto,Let's Shop!",
      image: "assets/images/splash_3.png"),
];
List<CategoriesModel> categoriesModelList = [
  CategoriesModel(
      icon: "assets/icons/icons/Flash Icon.svg", name: "Flash Deal"),
  CategoriesModel(icon: "assets/icons/icons/Bill Icon.svg", name: "Bill"),
  CategoriesModel(icon: "assets/icons/icons/Game Icon.svg", name: "Game"),
  CategoriesModel(icon: "assets/icons/icons/Gift Icon.svg", name: "Daily Gift"),
  CategoriesModel(icon: "assets/icons/icons/Discover.svg", name: "More"),
];
List<SpecialModel> specialModelList=[
  SpecialModel(image: "assets/images/Image Banner 2.png", title: "SmartPhone", subTitle: " Brands", brandCount: 10),
  SpecialModel(image: "assets/images/Image Banner 3.png", title: "Fashion", brandCount: 5, subTitle: " Brands")
];
List<PopularModel> popularModelList=[
  PopularModel(image: "assets/images/Image Popular Product 1.png", title: "Wireless Controller For PS4", price: 65.99),
  PopularModel(image: "assets/images/Image Popular Product 2.png", title: "Nike Sport White - Man Pant", price: 50.5),
  PopularModel(image: "assets/images/Image Popular Product 3.png", title: "Gloves And Hat Polygon", price: 36.99),
];
Set<FavoriteModel> favoriteModelList= {

};