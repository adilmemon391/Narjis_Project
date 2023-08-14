import 'package:custom_selectable_text/custom_selectable_text.dart';
import 'package:flutter/material.dart';
import 'package:qwizapp/CategoryWidgets/AllColors.dart';

class TurmCondition extends StatefulWidget {
  const TurmCondition({super.key});

  @override
  State<TurmCondition> createState() => _TurmConditionState();
}

class _TurmConditionState extends State<TurmCondition> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appDarkRed,
        // appBar: AppBar(
        //   title:  const Text("Turm & Condition"),
        // ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [_columnDataText()],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _columnDataText() {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(
              "assets/profile-bg3.jpg",
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20)),
      height: 2630,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomSelectableText(
                "Terms and Conditions for Champ Quizz",
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
                style: const TextStyle(fontSize: 16),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "Welcome to Champ Quizz, an online mobile application that allows users to test their knowledge on a variety of subjects through multiple-choice and true/false questions. These terms and conditions (Terms) govern your use of the Champ Quizz services and website, including any content, functionality, and services offered on or through the website, whether as a guest or a registered user.",
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
                    icon: const Icon(
                      Icons.share,
                    ),
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "By using the Services, you agree to be bound by these Terms. If you do not agree to these terms, you may not access or use the Services.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "1. Use of the Services",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "You may use the Services only for lawful purposes and in accordance with these Terms.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "You may not use the Services in any way that causes, or may cause, damage to the Services or impairment of the availability or accessibility of the Services.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "You may not use the Services for any commercial or business purposes without obtaining a license from the Company.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "2. User Accounts",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "To use certain features of the Services, you will need to register for an account.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "You agree to provide accurate and complete information when creating your account and to keep this information up-to-date.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "You accept responsibility for all activities that occur under your account or password.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "3. Intellectual Property",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "The Services and its entire contents, features, and functionality (including but not limited to all information, software, text, displays, images, video, and audio, and the design, selection, and arrangement thereof), are owned by the Company, its licensors, or other providers of such material and are protected by United States and international copyright, trademark, patent, trade secret, and other intellectual property or proprietary rights laws.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "These terms do not transfer any right, title, or interest in the Services to you, and the Company and its licensors will retain all rights, title, and interest in the Services.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "4. Disclaimer of Warranties",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "The Services are provided as is and as available without any warranties of any kind, either express or implied, including, but not limited to, the implied warranties of merchantability, fitness for a particular purpose, or non-infringement.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "The Company makes no warranty that the Services will meet your requirements, or that the Services will be uninterrupted, timely, secure, or error-free.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "Any material downloaded or otherwise obtained through the use of the Services is accessed at your own discretion and risk, and you will be solely responsible for any damage to your computer system or mobile device or loss of data that results from the download of any such material.",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "5. Limitation of Liability",
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
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomSelectableText(
              "In no event shall the Company, its affiliates, officers, directors, employees, agents, or licensors be liable to you for any direct, indirect, incidental, special, punitive, or consequential damages whatsoever resulting from any (i) errors, mistakes, or inaccuracies of content, (ii) personal injury or property damage, of any nature whatsoever, resulting from your access to and use of the Services, (iii) any unauthorized access to or use of our servers and/or any and all personal information stored therein, (iv) any interruption or cessation of transmission to or from the Services, (v) any bugs, viruses, Trojan horses, or the like which may be transmitted to or through the Services by any third party, and/or (vi) any errors or omissions in any content or for any loss or damage of any kind incurred as a result of your use of any content",
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
        ],
      ),
    );
  }
}
