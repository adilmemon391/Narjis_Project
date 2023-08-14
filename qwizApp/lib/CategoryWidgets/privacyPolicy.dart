import 'package:custom_selectable_text/custom_selectable_text.dart';
import 'package:flutter/material.dart';
import 'package:qwizapp/CategoryWidgets/AllColors.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appDarkRed,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
                margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                decoration: BoxDecoration(
                     image:const DecorationImage(image: AssetImage("assets/profile-bg3.jpg",),fit: BoxFit.cover,),
                    color: appCat1,
                    borderRadius: BorderRadius.circular(20)),
                 height: 1980,
                //height: 3000,
                child: _column_1()),
          ),
        ),
      ),
    );
  }

  Widget _column_1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
                margin: const EdgeInsets.only(top: 10, left: 15),
                child:  CustomSelectableText(
                  "Privacy Policy for Champ Quizz",
                  items: [
                    CustomSelectableTextItem.icon(
                        icon: const Icon(Icons.copy),
                        controlType: SelectionControlType.copy,
                        onPressed: (text) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Copied $text text"),
                          ));
                        }),
                    CustomSelectableTextItem.icon(
                      controlType: SelectionControlType.selectAll,
                      icon: const Icon(Icons.select_all),
                    ),
                    CustomSelectableTextItem.icon(
                        icon: const Icon(Icons.share),
                        controlType: SelectionControlType.cut,
                        onPressed: (text) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Shared $text text"),
                          ));
                        }),
                    // CustomSelectableTextItem.popUpMenuButton(
                    //     child: PopupMenuButton(
                    //       itemBuilder: (context) =>
                    //       [
                    //         const PopupMenuItem(
                    //           child: Text("Text 1"),
                    //         ),
                    //         const PopupMenuItem(
                    //           child: Text("Text 2"),
                    //         ),
                    //       ],
                    //     )),
                  ],
                  style: const TextStyle(fontSize: 18, color: white),
                ))
          ],
        ),
         Container(
          padding: const EdgeInsets.only(left: 15, top: 50),
          child: CustomSelectableText(
            "This privacy policy (Policy) describes how Champ Quizz  collects, uses, and shares personal information of users of our mobile application, Champ Quizz (the App), and any of our other products or services that link to this Policy (collectively, the Services).",
            items: [
              CustomSelectableTextItem.icon(
                  icon: const Icon(Icons.copy),
                  controlType: SelectionControlType.copy,
                  onPressed: (text) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Copied $text text"),
                    ));
                  }),
              CustomSelectableTextItem.icon(
                controlType: SelectionControlType.selectAll,
                icon: const Icon(Icons.select_all),
              ),
              CustomSelectableTextItem.icon(
                  icon: const Icon(Icons.share),
                  onPressed: (text) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Shared $text text"),
                    ));
                  }),
              // CustomSelectableTextItem.popUpMenuButton(
              //     child: PopupMenuButton(
              //       itemBuilder: (context) =>
              //       [
              //         const PopupMenuItem(
              //           child: Text("Text 1"),
              //         ),
              //         const PopupMenuItem(
              //           child: Text("Text 2"),
              //         ),
              //       ],
              //     )),
            ],
            style: const TextStyle(fontSize: 18),
          ),
        ),
         Container(
           padding: const EdgeInsets.only(top: 40, left: 15),
          child: CustomSelectableText(
            "Collection of Personal Information",
            items: [
              CustomSelectableTextItem.icon(
                  icon: const Icon(Icons.copy),
                  controlType: SelectionControlType.copy,
                  onPressed: (text) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Copied $text text"),
                    ));
                  }),
              CustomSelectableTextItem.icon(
                controlType: SelectionControlType.selectAll,
                icon: const Icon(Icons.select_all),
              ),

              CustomSelectableTextItem.icon(
                  icon: const Icon(Icons.share),
                  onPressed: (text) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Shared $text text"),
                    ));
                  }),
              // CustomSelectableTextItem.popUpMenuButton(
              //     child: PopupMenuButton(
              //       itemBuilder: (context) =>
              //       [
              //         const PopupMenuItem(
              //           child: Text("Text 1"),
              //         ),
              //         const PopupMenuItem(
              //           child: Text("Text 2"),
              //         ),
              //       ],
              //     )),
            ],
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
         Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: CustomSelectableText(
            "We may collect personal information from you, such as your name, email address, and other contact information, when you register for an account, use the Services, or otherwise interact with us. We may also collect information about your use of the Services, such as the types of quizzes you take, your scores, and the frequency and duration of your activities. We may also collect your location data if you enable this feature on your device.",
            style: const TextStyle(fontSize: 18),
          ),
        ),
         Container(
          padding: const EdgeInsets.only(left: 15, top: 40),
          child: CustomSelectableText(
            "Use of Personal Information",
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
         Container(
           padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: CustomSelectableText(
            "We may use your personal information to provide, maintain, and improve the Services, to personalize your experience, and to communicate with you, such as to send you updates and other information related to the Services. We may also use your personal information for research and analytics purposes, or to develop new products and services.",
            style: const TextStyle(fontSize: 18),
          ),
        ),
         Container(
           padding: const EdgeInsets.only(left: 15, top: 40),
          child: CustomSelectableText(
            "Sharing of Personal Information",
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
         Container(
           padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: CustomSelectableText(
            "We may share your personal information with third parties, such as service providers and partners, for the purposes described in this Policy. We may also share your personal information as required by law or in the interest of protecting our rights and the rights of others. We do not sell or share your personal information to any third party for advertising or marketing purposes.",
            style: const TextStyle(fontSize: 18),
          ),
        ),
         Container(
           padding: const EdgeInsets.only(left: 15, top: 40),
          child: CustomSelectableText(
            "Security of Personal Information",
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
         Container(
           padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: CustomSelectableText(
            "We take reasonable measures to protect your personal information from unauthorized access, use, or disclosure. We use industry standard security protocols to protect your data. However, please be aware that no method of transmitting or storing data is completely secure, and we cannot guarantee the absolute security of your personal information.",
            style: const TextStyle(fontSize: 18),
          ),
        ),
         Container(
           padding: const EdgeInsets.only(left: 15, top: 40),
          child: CustomSelectableText(
            "Changes to this Policy",
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
         Container(
           padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: CustomSelectableText(
            "We may update this Policy from time to time. If we make any material changes, we will notify you through the App or by other means, such as by email. Your continued use of the Services after any changes to this Policy will constitute your acceptance of such changes.",
            style: const TextStyle(fontSize: 18),
          ),
        ),
         Container(
           padding: const EdgeInsets.only(left: 15, top: 40),
          child: CustomSelectableText(
            "Contact Us",
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
         Container(
           padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: CustomSelectableText(
            "If you have any questions or concerns about this Policy or our use of your personal information, please contact us at sumitsinha401@gmail.com.",
            style: const TextStyle(fontSize: 18),
          ),
        ),
         Container(
           padding: const EdgeInsets.only(left: 15, top: 40),
          child: CustomSelectableText(
            "By using our App, you agree to the terms of this privacy policy.",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
