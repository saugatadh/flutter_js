import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginButton extends StatelessWidget {
  final Function ontap;
  const LoginButton({this.ontap});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  GestureDetector(
        onTap: ontap,
          child: Container(
          height:size.height* 0.06,
          
          width:size.width * 0.15,
                        decoration: BoxDecoration(
                          color: Color(0xff024BBC),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                       boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff085dcf).withOpacity(0.3),
                                      spreadRadius: 5,
                                      blurRadius: 20,
                                      offset: Offset(3, 7), // changes position of shadow
                                    ),]
                        ),
                       
                          child: Center(child: Text('LOG IN',style: GoogleFonts.roboto(color: Colors.white,fontSize: 14,)),
              ),)
    );
  }
}