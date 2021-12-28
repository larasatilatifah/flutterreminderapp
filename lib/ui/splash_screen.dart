import 'package:flutter/material.dart';
import 'package:flutterreminderapp/ui/home_page.dart';
import 'package:flutterreminderapp/ui/theme.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
// import 'package:assets';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 700,
              // width: 700,
              child: Lottie.asset('assets/calendar.json'),
            ),

            _bottomSheetButton(
              label: "Get Started",
              onTap: (){
                // _taskController.markTaskCompleted(task.id!);
                // Get.back();
                Get.to(()=>HomePage());

              },
              clr: primaryClr,
              context: context,
              
            ),
          ],
          
            
          
        ),
        
      ),

    );
  }

  _bottomSheetButton({
    required String label,
    required Function()? onTap,
    required Color clr,
    bool isClose=false,
    required BuildContext context,
  }){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        height: 55,
        width: MediaQuery.of(context).size.width*0.5,
        decoration: BoxDecoration(
          // border: Border.all(
          //   width: 2,
          //   color: isClose==true?Get.isDarkMode?Colors.grey[600]!:Colors.grey[300]!:clr
          // ),
          borderRadius: BorderRadius.circular(30),
          color: isClose==true?Colors.transparent:clr,
        ),
        child: Center(
          child: Text(
            label,
            style: isClose?titleStyle:titleStyle.copyWith(color:Colors.white),
          ),
        ),
      ),
    );
  }
}