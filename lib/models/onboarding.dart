class OnBoardingModel {
  String title;
  String image_url;
  String text;
  OnBoardingModel({
    required this.title,
    required this.image_url,
    required this.text,
  });
}

List<OnBoardingModel> onboardingItem = [
  OnBoardingModel(
      title: 'Keep your house clean with freehand',
      image_url:
          'https://lemonblossomcleaning.com/wp-content/uploads/2020/02/hire-a-house-cleaning-service.jpeg',
      text:
          'We provide detailed house cleaning and sanitzing services for our valued clients'),
  OnBoardingModel(
      title: 'We can repair anything with freehand',
      image_url:
          'https://ilaiyaacservice.in/wp-content/uploads/2016/11/refrigerator-repair-services-chennai.jpg',
      text:
          'We provide detailed house cleaning and sanitzing services for our valued clients lets hire'),
  OnBoardingModel(
      title: 'Keep your house strong with freehand',
      image_url:
          'https://media.istockphoto.com/photos/smiling-handsome-plumber-standing-with-crossed-arms-and-looking-at-picture-id1049769132?k=20&m=1049769132&s=612x612&w=0&h=ei66SOge78j5UXF31crTQJwyhzillGKTVBRa868hCjY=',
      text:
          'We provide detailed house cleaning and sanitzing services for our valued clients lorem ipsumg sfas '),
];
