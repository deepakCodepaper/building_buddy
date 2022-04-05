class BestSellingModel {
  String productImg;
  String productName;
  String productAmt;

  BestSellingModel(
      {required this.productImg,
      required this.productName,
      required this.productAmt});
}

List<BestSellingModel> bestSellingList = [
  BestSellingModel(
      productImg: 'assets/images/Image.png',
      productName: '3-5/8" Steel Track 1-1/4" 25GA Flange 10',
      productAmt: '4.15'),
  BestSellingModel(
      productImg: 'assets/images/Image-2.png',
      productName: '1-5/8" Non Load Bearing Steel Stud Framing 25GA1-1/4" Flange 8, 9, 10, 12ft',
      productAmt: '4.15'),
  BestSellingModel(
      productImg: 'assets/images/Image.png',
      productName: '3-5/8" Steel Track 1-1/4" 25GA Flange 10',
      productAmt: '4.15'),
  BestSellingModel(
      productImg: 'assets/images/Image.png',
      productName: '3-5/8" Steel Track 1-1/4" 25GA Flange 10',
      productAmt: '4.15'),
];
