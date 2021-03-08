import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  @override
  _Profile_ScreenState createState() => _Profile_ScreenState();
}

class _Profile_ScreenState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Profile Screen"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.clear,color: Colors.black,),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text("My profile",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                 SizedBox(height: 15,),

                 Container(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,

                     children: [
                      Row(
                        children: [
                          Icon(Icons.perm_identity,size: 20,),
                          SizedBox(width: 07,),
                          Text("Matlida Brown",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                            ),),
                        ],
                      ),
                       Row(
                         children: [
                           Icon(Icons.mail_outline_outlined,size: 20,),
                           SizedBox(width: 07,),
                           Text("matlendaaa@gmail.com",
                             style: TextStyle(
                               fontSize: 10,
                             ),),
                         ],
                       ),




                     ],
                   ),
                 ),
                SizedBox(height: 15,),
                row_box("My Orders","Already have 12 orders"),
                row_box("Shipping Address","3 Addresses"),
                row_box("Payment Methods","Visa 193*"),
                row_box("Promocodes","You have special Promocode"),
                row_box("My Reviews","Reviews of 4 items"),
                row_box("Settings","Notificatoins & Passwords"),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget row_box(String heading, String head2){
    return Column(
      children: [
        SizedBox(height: 08,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text(heading,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 05,),
                  Text(head2,
                    style: TextStyle(
                      fontSize: 10,
                    ),),


                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios,size: 15,),

          ],
        ),
        SizedBox(height: 07,),
        Divider(color: Colors.grey,height: 2,)
      ],
    );
  }
}
