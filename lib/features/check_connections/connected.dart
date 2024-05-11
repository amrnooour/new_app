import 'package:flutter/cupertino.dart';

class Connected extends StatelessWidget {
  const Connected({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
        const SizedBox(width: 20,),
        Image.network("https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1920,c_scale,q_auto/cnnarabic/2024/04/05/images/265254.jpg",
        height: 100,width: 100,fit: BoxFit.fill,),
        const SizedBox(width: 20,),
        Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm92tkMqBgp-H4f3QLIo3Iy_tbQXl41JwNP3d7Ltcx5Q&s",
        height: 100,width: 100,fit: BoxFit.fill,),
        const SizedBox(width: 20,),
        Image.network("https://cnn-arabic-images.cnn.io/cloudinary/image/upload/w_1920,c_scale,q_auto/cnnarabic/2024/04/05/images/265254.jpg",
        height: 100,width: 100,fit: BoxFit.fill,),
      ],),
    );
  }
}