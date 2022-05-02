class SliderModel {
  String? imageAssetPath;
  String? title;
  String? desc;

  SliderModel({this.imageAssetPath, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath!;
  }

  String getDesc() {
    return desc!;
  }
}

List<SliderModel> getSlides() {
  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = SliderModel();

  //1
  sliderModel.setDesc(
      " بنوفرلك عروض وخصومات علي المطاعه و  المواد الغذائية و ومنتجات العنايه والمستشغيات ");
  sliderModel.setImageAssetPath("assets/images/introdcution1.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //2
  sliderModel.setDesc(
      " بنوفرلك عروض وخصومات علي المطاعه و  المواد الغذائية و ومنتجات العنايه والمستشغيات ");
  sliderModel.setImageAssetPath("assets/images/introdcution2.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //3
  sliderModel.setDesc(
      " بنوفرلك عروض وخصومات علي المطاعه و  المواد الغذائية و ومنتجات العنايه والمستشغيات ");
  sliderModel.setImageAssetPath("assets/images/introdcution2.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  return slides;
}
