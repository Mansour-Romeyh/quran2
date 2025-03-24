import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quran2/controller/homecontroller.dart';
import 'package:quran2/core/constant/appfonts.dart';
import 'package:quran2/view/widgets/surahlist.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
  Homecontroller controller =  Get.put(Homecontroller());
    
    return Scaffold( appBar: AppBar(
      actions: [
        IconButton(onPressed: (){
          controller.gotofavorite();
        }, icon: Icon(Icons.favorite_border_rounded,size: 40,))
      ],
      centerTitle: false,
      title: Text('السور',style: Appfonts.fonttagwal.copyWith(fontSize: 50),),
    ) ,body: ListView.builder(
      itemCount: controller.data.length,
      itemBuilder: (context, index) => 
    Surahlist(index: index, name_ar: " سورة  ${controller.data[index].nameAr}", onTap: (){
      controller.gotosurahditils(index);
    })
    ,));
  }
}