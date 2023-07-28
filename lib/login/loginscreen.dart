import 'package:flutter/material.dart';
import 'package:educational_app/otp/otpscreen.dart';

class LoginScreen extends StatelessWidget {
  static const String tag = '-/loginscreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      /*appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0,leading: Padding(
        padding: const EdgeInsets.only(top: 8.0,left: 8.0),
        child: InkWell(
          splashColor: Colors.purple.shade100,

          borderRadius: BorderRadius.circular(30),
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(color: Colors.black45,borderRadius: BorderRadius.circular(30)),
            child: Icon(Icons.arrow_back),
          ),
        ),
      )),*/
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size.height,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset('assets/images/wavetransprent.png')),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 60,right: 10),
                            width: size.width,
                            alignment: Alignment.centerRight,
                            child: Image.asset('assets/images/book.png',height: 125,width: 125,)),
                        Transform(
                            transform: Matrix4.translationValues(-10, -25, 0),
                            child: Text('India Learner'.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'PlayfairDisplay',color: Colors.purple.shade400,),)),
                        Transform.translate(offset: Offset(0, -25),child: Text('Build Super Memory Power',style: TextStyle(fontStyle: FontStyle.normal,color: Colors.purple.shade500,fontSize: 12,fontFamily: 'PlayfairDisplay'),))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 70,),
                        Text.rich(
                            TextSpan(
                          children: [
                            TextSpan(text: 'We will send you '),
                            TextSpan(text: 'OTP',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black87)),
                            TextSpan(text: ' on your mobile number to '),
                            TextSpan(text:'\n verify your account')
                          ]
                        ),textAlign: TextAlign.center,style: TextStyle(fontSize: 17,color: Colors.black.withOpacity(0.8)),),
                        SizedBox(height: 35,),
                        TextFormField(
                          autofocus: false,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(width: 1,color: Colors.grey.shade100,style: BorderStyle.solid)
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(width: 1,color: Colors.black54,style: BorderStyle.solid)
                            ),
                            isCollapsed: true,
                            labelText: 'Mobile Number',
                            contentPadding: EdgeInsets.only(top: 3,bottom:3,left: 15,right: 15),
                            floatingLabelStyle: TextStyle(color: Colors.black87),
                            prefix: Text('+91 '),
                            prefixStyle: TextStyle(color: Colors.grey.shade700),
                            suffix: ElevatedButton(
                              onPressed: (){
                                Navigator.of(context).pushNamed(OTPScreen.tag);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.purple.shade500,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                              ),
                              child: Text('Send OTP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                            )
                          ),
                        ),
                        SizedBox(height: 35,),
                        Text.rich(
                          TextSpan(
                              children: [
                                TextSpan(text: 'By continuing you agree to our '),
                                TextSpan(text: '\n Terms of Services',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.deepPurple)),
                                TextSpan(text: ' and'),
                                TextSpan(text: ' Conditions',style: TextStyle(fontWeight: FontWeight.w700,color: Colors.deepPurple)),
                              ]
                          ),textAlign: TextAlign.center,style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.6)),),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/login.png',height: 300,),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


