import 'package:flutter/material.dart';
import 'package:flutter_home_work/widget/icon.dart';

import 'package:flutter_home_work/widget/text.dart';
import 'package:flutter_home_work/widget/switch.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key,  this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              
              /**
               * Common
               * */
              Container(
                  height: 115,
                  decoration: containerDecoration(),
                  child:  Column(children: [
                    Column(
                      children: [
                        Row(children:  [
                          AddTextWidget(
                              text: 'Common',
                              color: Colors.deepOrange,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold
                          )
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: AddIconWidget( icon: Icons.language )
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50, top: 40),
                                child: Column(
                                  children: [
                                    AddTextWidget(text: 'Language'),
                                    AddTextWidget(text: 'English', color: Colors.grey,)
                                  ],
                                )
                            )
                          ],
                        )
                      ],)
                  ],)
              ),

              /**
               * Account
               * */
              Container(
                //
                  height: 200,
                  decoration: containerDecoration(),
                  child:  Column(children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: AddIconWidget( icon: Icons.cloud_outlined )
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50, top: 30),
                                child: Column(
                                  children:  [
                                   AddTextWidget(text: 'Environment'),
                                   AddTextWidget(text: 'Production', color: Colors.grey)
                                  ],
                                )
                            )
                          ],
                        ),
                       Container(
                         margin: const EdgeInsets.only(top: 35),
                         child:
                         Row(
                             children: [
                               AddTextWidget(
                                 text: 'Account',
                                 color: Colors.deepOrange,
                                 fontSize: 18,
                                   fontWeight: FontWeight.bold
                               )
                             ]),
                       ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(margin: const EdgeInsets.only(top: 5),
                                child: AddIconWidget(
                                  icon: Icons.call,
                                )
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50, top: 40),
                                child: Column(
                                  children: [
                                   AddTextWidget(text: 'Phone number')
                                  ],
                                )
                            )
                          ],
                        )
                      ],)
                  ],)
              ),

              /**
               * Email
               * */
              Container(
                //
                  height: 80,
                  decoration: containerDecoration(),
                  child:  Column(children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: AddIconWidget( icon: Icons.email )
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50, top: 30),
                                child: Column(
                                  children: [
                                    AddTextWidget(text: 'Email')
                                  ],
                                )
                            )
                          ],
                        ),
                      ],)
                  ],)
              ),

              /**
               * Security
               * */
              Container(
                //
                  height: 200,
                  decoration: containerDecoration(),
                  child:  Column(children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: AddIconWidget( icon: Icons.assignment_return_rounded )
        ),
                            Container(
                                margin: const EdgeInsets.only(left: 50, top: 30),
                                child: Column(
                                  children: [
                                   AddTextWidget(text: 'Sign aut')
                                  ],
                                )
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 35),
                          child:
                          Row(
                              children: [
                                AddTextWidget(
                                  text: 'Security',
                                  color: Colors.deepOrange,
                                  fontSize: 18,
                                    fontWeight: FontWeight.bold
                                )
                              ]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(margin: const EdgeInsets.only(top: 5),
                                child: AddIconWidget( icon: Icons.phonelink_lock )
                            ),
                            Container(
                                margin: const EdgeInsets.only(left: 50, top: 40),
                                child: Column(
                                  children: [
                                   AddTextWidget(text: 'Lock app in background')
                                  ],
                                )
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 70, top: 10),
                              /**
                               * Switch
                               **/
                              child: SwitchWidget(
                                activeColor: Colors.pinkAccent,
                                activeTrackColor: Colors.deepOrange,
                              )
                            )
                          ],

                        ),

                      ],)
                  ],)
              ),
            ],
          ),

        ),
      ),
    );
  }

  // Decoration
  BoxDecoration containerDecoration() {
    return  BoxDecoration(
        border: Border(
          bottom:  BorderSide(width: 1.0, color: Colors.grey.shade200),
        )
    );
  }
}