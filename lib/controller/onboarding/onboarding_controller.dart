import 'package:daily_task/view/authentication/welcome/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController{

static OnboardingController get instance => Get.find();

final pageController = PageController();
RxInt currentPage = 0.obs;



void onPageChange  (index){

  currentPage.value=index;
  pageController.jumpToPage(index);
  
}

void onNext (){

if  (currentPage.value<2){
  currentPage.value++;
   pageController.jumpToPage(currentPage.value);}

   else if (currentPage.value==2){

    Get.offAll(()=>WelcomePage());

   }
   else{
    return;
   }
}
void onSkip (){
  currentPage.value=2;
   pageController.jumpToPage(currentPage.value);
}

void onBack(){
  if(currentPage.value==0){
    return;
  }
   currentPage.value--;
   pageController.jumpToPage(currentPage.value);
}

void indicatorDoClick(index){
   currentPage.value=index;
  pageController.jumpToPage(index);
  

}



}