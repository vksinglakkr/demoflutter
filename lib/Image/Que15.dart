import 'package:flutter/material.dart';
// hema comment

//  import 'package:flutter_swiper/flutter_swiper.dart';

class Que15Swiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Image Slider Demo"),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(5),
          alignment: Alignment.center,
          constraints: BoxConstraints.expand(height: 225),
          child: imageSlider(context)),
    );
  }
  
  imageSlider(BuildContext context) {

  }
}

// hema comment

// Swiper imageSlider(context) {
//   return new Swiper(
//     autoplay: true,
//     itemBuilder: (BuildContext context, int index) {
//       return new Image.network(
//         "https://lh3.googleusercontent.com/wIcl3tehFmOUpq-Jl3hlVbZVFrLHePRtIDWV5lZwBVDr7kEAgLTChyvXUclMVQDRHDEcDhY=w640-h400-e365-rj-sc0x00ffffff",
//         fit: BoxFit.fitHeight,
//       );
//     },
//     itemCount: 10,
//     viewportFraction: 0.7,
//     scale: 0.8,
//   );
// }
