import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firsttry/widgets/textfield.dart';
import 'package:firsttry/widgets/loginbutton.dart';
import 'package:firsttry/widgets/googlesignin.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
Size size = MediaQuery.of(context).size;
// final TextStyle display1 = Theme.of(context).textTheme.headline4;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
            child: Center(
              child: Container(
         
          child: SingleChildScrollView(
          
           child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                  Container(
                        
                        height: size.height * 0.6,
                        child: Center(child: Image.asset('assets/images/signin.jpg'))
                        ),
                   SizedBox(width: size.width* 0.1),
                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children:<Widget> [
                      
                      Text('Welcome back !',style: GoogleFonts.montserrat(color: Color(0xff25232c),fontWeight: FontWeight.bold,fontSize: 36),),
                      SizedBox(height: size.height * 0.01),
                      Text('Log in to your existing account of lets Chat', style: GoogleFonts.lato(color: Color(0xffaaabac), fontSize: 15),),
                      SizedBox(height: size.height * 0.04),
                      NewTextfield(
                            hintText: 'Enter your email adress',
                            lableText: 'ENTER EMAIL',
                            icon: EvaIcons.personOutline,
                            obsecure: false,
                            
                        ),
                      SizedBox(height: size.height * 0.03),
                      NewTextfield(
                          hintText: 'Enter your password',
                            lableText: 'ENTER PASSWORD',
                            icon: EvaIcons.lockOutline,
                            obsecure: true,
                      ),
                      SizedBox(height: size.height * 0.04),
                      LoginButton(
                          ontap: (){},
                      ),
                      SizedBox(height: size.height * 0.03),
                      Text('Or connect using', style: GoogleFonts.roboto(color: Color(0xffaaabac), fontSize: 15),),
                       SizedBox(height: size.height * 0.01),
                      GoogleLoginButton(
                         ontap: (){},
                      ),
                      SizedBox(height: size.height * 0.06),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:<Widget>[
                          
                            Text('Dont have an account ?  ', style: GoogleFonts.roboto(color: Colors.black,fontSize: 16),),
                            GestureDetector(
                              child: Text('Sign Up', style: GoogleFonts.roboto(color:  Color(0xff024BBC),fontSize: 18,fontWeight: FontWeight.w600,))
                            ),
                        ]
                      ),
                 
                 ],),
               ],
           )
          ),
        ),
            ),
      ) ,
    );
  }
}