import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signuppage/core/constants/app_assets.dart';
import 'package:signuppage/core/constants/colors.dart';
import 'package:signuppage/core/constants/textstyle.dart';
import 'package:signuppage/ui/custom_widget/custom_banners.dart';
import 'package:signuppage/ui/custom_widget/shimmmer/custom_nav_bar.dart';
import 'package:signuppage/ui/screens/stays/stays_view_model.dart';

class StaysScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StaysViewModel(),
      child: Consumer<StaysViewModel>(
        builder: (context, model, child) => Scaffold(
          backgroundColor: blackColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40,),
                  model.bannerList.isEmpty
                      ? Center(
                          child: Text(
                            "No Banner List",
                            style: style16B.copyWith(color: whiteColor),
                          ),
                        )
                      : _bannerList(model),
                  const SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(width: 2,color: blackColor),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ListTile(
                      leading: Image.asset(AppAssets.blackicon,height: 20,width: 20,),
                      title: const Text('10% coupon on first app booking',style: TextStyle(color: blackColor),),
                      trailing: const Text('claim',style: TextStyle(color: Colors.cyan),),
                    )
                  ),
                  const SizedBox(height: 15,),
                  const Text(
                    'Promotions',
                    style: TextStyle(
                      color: Colors.transparent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      shadows: [
                        Shadow(
                          offset: Offset(0, -5),
                          color: whiteColor,
                        ),
                      ],
                      decoration: TextDecoration.underline,
                      decorationColor: whiteColor,
                      decorationThickness: 2,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  _bannerList2(model),
                  const SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(width: 2,color: redColor)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('vip status',style: TextStyle(color: blackColor,fontWeight: FontWeight.bold,fontSize: 20),),
                        const SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(vertical:5,horizontal: 10),
                          decoration: BoxDecoration(
                            color: whiteColor,
                            border: Border.all(width: 1,color: blackColor),
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 20,
                                spreadRadius: 4,
                                offset: const Offset(2, 2), 
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                child: RichText(
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "As an ", 
                                        style: TextStyle(color: Colors.black, fontSize: 12),
                                      ),
                                      TextSpan(
                                        text: "Vip bronze Member ", 
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "recieve a larger discount", 
                                        style: TextStyle(color: Colors.black, fontSize: 12),
                                      ),
                                    ]
                                  )
                                ),
                              ),
                              Image.asset(AppAssets.bronzeicon,scale: 4,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text(
                    'Explore the world',
                    style: TextStyle(
                      color: Colors.transparent,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      shadows: [
                        Shadow(
                          offset: Offset(0, -5),
                          color: whiteColor,
                        ),
                      ],
                      decoration: TextDecoration.underline,
                      decorationColor: whiteColor,
                      decorationThickness: 2,
                    ),
                  ),
                  _bannerList3(model),
                  SizedBox(height: 15,),
                  CustomNavBar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

_bannerList(StaysViewModel model) {
  return SizedBox(
    height: 450,
    child: Column(
      children: [
        SizedBox(
          height: 250,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: model.bannerList.isEmpty ? 0 : 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CustomBanners(bannersModel: model.bannerList[index]);
            },
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 150,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              List<Map<String, dynamic>> containersData = [
                {
                  'color': blueish,
                  'text': 'Flights',
                  'imgUrl': AppAssets.plane,
                },
                {
                  'color': pinkish,
                  'text': 'Activities',
                  'imgUrl': AppAssets.ballon,
                },
                {
                  'color': lightPink,
                  'text': 'Homes and Apts',
                  'imgUrl': AppAssets.house,
                },
              ];

              var container = containersData[index];

              return Container(
                margin: const EdgeInsets.all(10),
                height: 92,
                width: 180,
                decoration: BoxDecoration(
                  color: container['color'],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          container['text'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          container['imgUrl'],
                          scale: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

_bannerList2(StaysViewModel model) {
  return SizedBox(
    height: 150,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        List<Map<String, dynamic>> containersData = [
          {
            'imgUrl': AppAssets.travel,
          },
          {
            'imgUrl': AppAssets.tbanner,
          },
        ];

        var container = containersData[index];

        return Container(
          margin: const EdgeInsets.all(10),
          height: 109,
          width: 146,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(container['imgUrl']),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    ),
  );
}

_bannerList3(StaysViewModel model) {
  return SizedBox(
    height: 150,
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        List<Map<String, dynamic>> containersData = [
          {
            'imgUrl': AppAssets.explore,
          },
          {
            'imgUrl': AppAssets.exploreworld,
          },
        ];

        var container = containersData[index];

        return Container(
          margin: const EdgeInsets.all(10),
          height: 109,
          width: 146,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(container['imgUrl']),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    ),
  );
}
