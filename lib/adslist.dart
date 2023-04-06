 class Ads{
  final List<String> _ads=[
     'https://ng.jumia.is/cms/0-5-TechWeek/2023/712x384_2.jpg',
     'https://ng.jumia.is/cms/0-5-TechWeek/2023/Brand-Day/mar-29-xiaomi/Slider.png',
     'https://ng.jumia.is/cms/0-1-weekly-cps/0-2023/w13-easter/712x384_new_easter.png',
     'https://ng.jumia.is/cms/0-1-cpr/2023/large-item-updated/Slider_copy.jpg',
     'https://ng.jumia.is/cms/0-1-initiatives/jumia-pay/2023/feb/Mall_BT_712x384.jpg'

  ];

String getAds({required index}){
    return  _ads[index];
  }

 int getAdsLength(){
    return _ads.length;
  }
}