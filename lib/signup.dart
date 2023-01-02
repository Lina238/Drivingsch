import 'package:drivingsch/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'utils.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailc=TextEditingController();
  final passc=TextEditingController();
  bool pass=false;
  bool value=false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body:
      SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(40*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 285*fem, 40*fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: 37*fem,
                        height: 37*fem,
                        child: Image.asset(
                          'assets/images/3.png',
                          width: 37*fem,
                          height: 37*fem,
                        ),
                      ),
                    ),
                  ),
                  Center(
                   
                    child: Container(
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 50*fem),
                      constraints: BoxConstraints (
                        maxWidth: 274*fem,
                      ),
                      child: Text(
                        'Create Account with Email',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 34*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          color: Color(0xff2e2d2d),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 426*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(16*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 235*fem, 8.5*fem),
                            child: Text(
                              'Your email:',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5*ffem/fem,
                                color: Color(0xff2e2d2d),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
                          margin: EdgeInsets.fromLTRB(40*fem, 0*fem,40*fem , 8.5*fem),
                          width: double.infinity,
                          height: 40*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffd3fad4),
                            borderRadius: BorderRadius.circular(16*fem),
                          ),
                          child:
                            TextFormField(
                              controller: emailc,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if(value!.isEmpty){
                                  return "entrez l'email correctement";
                                }
                                bool emailV=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                                if(!emailV){
                                  return "entrez l'email correctement";
                                }
                              },
                              decoration: InputDecoration(
                                hintText: 'example@gmail.com',
                                border: InputBorder.none,
                              ),
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5*ffem/fem,
                                color: Color(0xff636161),
                              ),
                            ),

                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 426*fem,
                    decoration: BoxDecoration (

                      borderRadius: BorderRadius.circular(16*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(

                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 235*fem, 8.5*fem),
                            child: Text(
                              'Password:',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 15*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5*ffem/fem,
                                color: Color(0xff2e2d2d),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
            margin: EdgeInsets.fromLTRB(40*fem, 0*fem,40*fem , 8.5*fem),
            width: double.infinity,
            height: 40*fem,
            decoration: BoxDecoration (
              color: Color(0xffd3fad4),
              borderRadius: BorderRadius.circular(16*fem),
            ),
            child:
            TextFormField(
              controller: passc,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.trim().isEmpty||passc.text.length<6) {
                  return 'entrez le mot de passe correctement';
                }
                return null;
              },

              obscureText: pass,
              decoration: InputDecoration(
                hintText: '******',
                suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        if(pass){
                          pass = false;
                        }else{
                          pass = true;
                        }
                      });
                    }, icon: pass == true?Icon(Icons.remove_red_eye_outlined):
                ImageIcon(
                  AssetImage("assets/images/5.png"),
                  color: Color(0xff4caf50),
                  size: 24,
                )),
                border: InputBorder.none,
              ),
              style: SafeGoogleFont (
                'Poppins',
                fontSize: 14*ffem,
                fontWeight: FontWeight.w400,
                height: 1.5*ffem/fem,
                color: Color(0xff636161),
              ),

            ),

          ),
                      ],
                    ),
                  ),
                          Container(
                            margin: EdgeInsets.fromLTRB(23*fem, 20*fem,0*fem , 40*fem),
                            child: ListTile(
                                onTap: (){
                                  setState(() {
                                    value= !value;
                                    print(value);

                                  });
                                },
                                leading:
                                Checkbox(
                                    side: MaterialStateBorderSide.resolveWith(
                                          (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.selected)) {
                                          return const BorderSide(color: Color(0xff4caf50));
                                        }
                                        return const BorderSide(color: Color(0xff4caf50));
                                      },
                                    ),
                                    value: value!,
                                    activeColor:Color(0xff4caf50),
                                    focusColor:Color(0xff4caf50),
                                    hoverColor: Color(0xff4caf50),
                                    onChanged: (value) {
                                      setState(() {
                                        this.value = value!;
                                        print(value);

                                      });
                                    }),

                                title:
                                  RichText(

                                            text: TextSpan(
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.5*ffem/fem,
                                                color: Color(0xff636161),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: ' I agree to the',
                                                ),
                                                TextSpan(
                                                  text: ' Terms & Conditions',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff4caf50),
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      // Navigator.of(context).push(
                                                      //     // MaterialPageRoute(
                                                      //     //     builder: (context) =>  ConditionsPage()
                                                      //     // )
                                                      // );
                                                    },
                                                ),
                                                TextSpan(
                                                  text: ' and',
                                                ),
                                                TextSpan(
                                                  text: ' Privacy Policy',
                                                  style: SafeGoogleFont (
                                                    'Poppins',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.5*ffem/fem,
                                                    color: Color(0xff4caf50),
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      // Navigator.of(context).push(
                                                      //     // MaterialPageRoute(
                                                      //     //     builder: (context) =>  PrivacyPolicyPage()
                                                      //     // )
                                                      // );
                                                    },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                          ),

                  Container(
                    // group143vxJ (5:223)
                    margin: EdgeInsets.fromLTRB(46*fem, 0*fem, 33*fem, 20*fem),
                    width: double.infinity,
                    height: 38*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff4caf50),
                      borderRadius: BorderRadius.circular(16*fem),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Create Account',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.5*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(

                    margin: EdgeInsets.fromLTRB(78*fem, 0*fem, 79*fem, 0*fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom (
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 21*fem,
                        child: Center(
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Poppins',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5*ffem/fem,
                                  color: Color(0xff636161),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Already have an account ? ',
                                  ),
                                  TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>  LogIn()
                                            )
                                        );
                                      },
                                    text: 'Log in',
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5*ffem/fem,
                                      decoration: TextDecoration.underline,
                                      color: Color(0xff4caf50),
                                      decorationColor: Color(0xff4caf50),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}