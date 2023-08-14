import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umrah_package/app_theme/app_assets.dart';
import 'package:umrah_package/app_theme/size_conform.dart';

import '../../app_theme/app_colour.dart';
import '../enquiry_screens/enquiry_list_page.dart';

class InquiryPage extends StatefulWidget {
  static String routeName="/inauirypage";
   const InquiryPage({super.key});

  @override
  State<InquiryPage> createState() => _InquiryPageState();
}

class _InquiryPageState extends State<InquiryPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: Scaffold(
      backgroundColor:  pink,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:  const BoxDecoration(
            color: allconcol,
            image: DecorationImage(image: AssetImage(AppAssets.group,),fit: BoxFit.cover,)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              arrowContainer(),

               const SizedBox(
                height: 60,
              ),

              textContainer("Inquiry"),


               const SizedBox(height: 10,),
              Container(
                margin:  const EdgeInsets.only(left: 21),
                child:textContainer2("Enter you new account infromation")
              ),
               const SizedBox(
                height: 50,
              ),
              Container(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                margin:   EdgeInsets.only(left: getHeight(15),right: getWidth(10),bottom: getHeight(10)),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: textFieldName( 'Enter Name'),
              ),
              Container(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                margin:  const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: textFieldNumber('Enter Number'),
              ),
              Container(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                margin:  const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: textfieldAdult('Adult')
              ),
              Container(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                margin:  const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: textFieldchild('Child'),
              ),
              Container(
                padding:  const EdgeInsets.symmetric(horizontal: 20),
                margin:  const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: textFieldRotalMember('Total member'),
              ),

              Container(
                  margin:EdgeInsets.only(top:getHeight(65)),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 275,
                    height: 51,
                    child: elevationButton("Submit"),
                  )),

            ],
          ),
        ),
      ),
    ));
  }
  Widget arrowContainer(){
    return Container(
    margin:  const EdgeInsets.only(left: 21,top: 12),
    height: 35,
    alignment: Alignment.center,
    width: 35,
    decoration: BoxDecoration(
        color:  lightGrey1,
        borderRadius: BorderRadius.circular(10)),
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child:  const Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.white,
        size: 15,
        weight: 12,
      ),
    ),
    );
  }

  Widget textContainer(String inqwairy){
    return Container(
      margin:  const EdgeInsets.only(left: 21),
      child:  Text(
        inqwairy,
        style: GoogleFonts.poppins(
            textStyle:  const TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: offblack)),
      ),
    );
  }
  Widget textContainer2(String text){
    return   Text(
      text,
      style: TextStyle(
        fontSize: 14,
        color: lightGrey,
      ),
    );
  }
  Widget textFieldName(String name){
    return TextFormField(
      obscureText: true,
      decoration:   InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText:name,
      ),
    );
  }
  Widget textFieldNumber(String number){
    return TextFormField(
      obscureText: true,
      decoration:   InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: number,
      ),
    );
  }
  Widget textfieldAdult(String text){
    return TextFormField(
      obscureText: true,
      decoration:   InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: text,
      ),
    );
  }
  Widget textFieldchild(String child){
    return TextFormField(
      obscureText: true,
      decoration:   InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: child,
      ),
    );
  }
  Widget textFieldRotalMember(String hint){
    return TextFormField(
      obscureText: true,
      decoration:   InputDecoration(
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        hintText: hint,
      ),
    );
  }
  Widget elevationButton(String button){
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:  const MaterialStatePropertyAll(
                lightGrey1),
            shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)))),
        onPressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(EnquiryListPage.routeName, (route) => false);
        },
        child:  Text(button,style: GoogleFonts.poppins(
            textStyle:  const TextStyle(fontSize: 15,color:containerColour)),));
  }
}
