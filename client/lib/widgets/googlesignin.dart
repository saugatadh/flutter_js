import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleLoginButton extends StatelessWidget {
    final Function ontap;
  const GoogleLoginButton({this.ontap});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  GestureDetector(
        onTap: ontap,
          child: Container(
          height:size.height* 0.06,
          
          width:size.width * 0.3,
                        decoration: BoxDecoration(
                          color: Color(0xffea473c),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                       boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffea473c).withOpacity(0.3),
                                      spreadRadius: 8,
                                      blurRadius: 20,
                                      offset: Offset(3, 7), // changes position of shadow
                                    ),]
                        ),
                       
                          child: Center(child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               
                              Icon(EvaIcons.google,color: Colors.white,),
                              SizedBox(width: size.width *0.05),
                              Text('Continue with Google',style: GoogleFonts.lato(color: Colors.white,fontSize: 14),),
                            ],
                          )),
              ),
    );
  }
}