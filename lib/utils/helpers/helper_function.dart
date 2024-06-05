
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

class THelperFunction{

  static Color? getColor(String value){

    if(value == "Green"){
      return Colors.green;
    }
    else if(value == "Red"){
      return Colors.red;
    }
    else if(value == "Blue"){
      return Colors.blue;
    }
    else if(value == "Pink"){
      return Colors.pink;
    }
    else if(value == "Grey"){
      return Colors.grey;
    }
    else if(value == "Purple"){
      return Colors.purple;
    }
    else if(value == "Black"){
      return Colors.black;
    }
    else if(value == "White"){
      return Colors.white;
    }
    else if(value == "Brown"){
      return Colors.brown;
    }
    else if(value == "Teal"){
      return Colors.teal;
    }
    else if(value == "Indigo"){
      return Colors.indigo;
    }
    else {
      return null;
    }
  }

  static void showSnackBar(String message){
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  static void showAlert(String title,String message){
    showDialog(
        context: Get.context!,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              TextButton(onPressed: () => Navigator.of(context).pop(),
                  child: const Text("OK"))
            ],
          );
        },);
  }

  static void navigateToScreen(BuildContext context,Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen,));
  }

  static String truncateText(String text,int maxLength){
    if(text.length <= maxLength){
      return text;
    }else{
      return '${text.substring(0,maxLength)}...';
    }
  }

  static bool isDarkMood(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }
  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static String getFormattedDate(DateTime date,{String format='dd MMM yyyy'}){
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicate<T>(List<T> list){
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widget,int rowSize){
    final wrappedList = <Widget>[];
    for(var i=0;i<widget.length;i+=rowSize){
      final rowChildren=widget.sublist(i,i+rowSize > widget.length ?widget.length :i+rowSize);
      wrappedList.add(Row(children: rowChildren,));
    }
    return wrappedList; 
  }
}