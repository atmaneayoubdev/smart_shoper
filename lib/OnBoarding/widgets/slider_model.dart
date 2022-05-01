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
      "اتمرن من أي مكان، وفي أي وقت، سواء كنت مبتدئاً أو محترفاً، بمعدات أو بدون معدات، تحت إشراف مدرب محترف");
  sliderModel.setImageAssetPath("assets/images/ilustration3.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //2
  sliderModel.setDesc(
      "مهما كان هدفك أو مستواك الرياضي، هنالك برنامج مصمم خصيصًا لك يمكنك ممارسته بالأيام التي تفضلها والأدوات المتاحة.");
  sliderModel.setImageAssetPath("assets/images/ilustration1.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  //3
  sliderModel.setDesc(
      "جهزنالك افضل صفات صحية، شهية، سهلة التحضير. بدل الوجبات ومكوناتها بأخرى حسب احتياجات جسمك من السعرات وتفضيلاتك الشخصية");
  sliderModel.setImageAssetPath("assets/images/ilustration2.png");
  slides.add(sliderModel);

  sliderModel = SliderModel();

  return slides;
}
