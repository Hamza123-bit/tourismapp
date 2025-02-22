import 'package:signuppage/core/base_view_model/base_view_model.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/model/banners.dart';

class StaysViewModel extends BaseViewModel{


  List<BannersModel> bannerList = [
    BannersModel(name: "Hotel",imgUrl: AppAssets.hotel),
     BannersModel(name: "Tech",imgUrl: AppAssets.hotel),
      BannersModel(name: "Bright",imgUrl: AppAssets.hotel),
       BannersModel(name: "CodeLab",imgUrl: AppAssets.hotel),
  ];



}