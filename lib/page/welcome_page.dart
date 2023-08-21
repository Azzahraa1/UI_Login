part of 'page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>{
  bool _isHidden = true;
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;
  bool _isChecked = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/image/logo.png', height: 350, width: 350, fit: BoxFit.fill),
            SizedBox(height: 15,),
            Text("Welcome", style: TextStyle(color: dangerColor, fontSize: 35), textAlign: TextAlign.center,),
            SizedBox(height: 15,),
            Text("Selamat datang di Bee Cafe", style: TextStyle(color: dangerColor, fontSize: 20), textAlign: TextAlign.center,),
            
            SizedBox(height: 51,),

            Container(height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
            child: ElevatedButton(
              onPressed: (){
                //tampilan registrasi
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context, builder: (context){
                    return StatefulBuilder(builder:(BuildContext context, StateSetter setState){
                        return Wrap(
                          children: [
                            //bagian regis

                            Container(
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(40), 
                                  topLeft: Radius.circular(40)
                                  )
                                ),
                                child:Container(
                                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //jarak
                                      SizedBox(height: 25,),
                                      Row(
                                        children: [
                                        Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Hello...", style: TextStyle(fontSize: 20, color: blackColor),),
                                            Text("Register", style: TextStyle(fontSize: 30, color: blackColor, fontWeight: FontWeight.bold),),
                                
                                          ],
                                        ),
                                        Spacer(),
                                        Center(child: InkWell
                                        (onTap:(){
                                          //ketika icon ditekan
                                          Navigator.pop(context);
                                        },
                                        child: Image.asset('assets/image/cancel.png', height: 30, width: 30,)))
                                
                                
                                      ],),

                                      SizedBox(height: 25,),
                                      TextField(
                                        obscureText: _isHidden,
                                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                      hintText: "Infoexample.com",
                                      labelText: "Username/Email",
                                      suffixIcon: InkWell(onTap: _tootleUsernameView
                                      , child: Icon(
                                        _isHidden ?
                                        Icons.visibility_outlined : Icons.visibility_off_outlined))
                                      )),
                                    
                                      SizedBox(height: 20,),
                                      TextField(
                                        obscureText: _isHiddenPassword,
                                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                      hintText: "Password",
                                      labelText: "Password",
                                      suffixIcon: InkWell(onTap: _tootlePasswordView, 
                                      child: Icon(
                                        _isHiddenPassword ?
                                        Icons.lock_outlined : Icons.lock_open_outlined))
                                      )),


                                      SizedBox(height: 20,),
                                      TextField(
                                        obscureText: _isHiddenConfirmPassword,
                                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                      hintText: "Confirm Password",
                                      labelText: "Confirm Password",
                                      suffixIcon: InkWell(onTap: _tootleConfirmPasswordView, 
                                      child: Icon(
                                        _isHiddenConfirmPassword ?
                                        Icons.lock_outlined: Icons.lock_open_outlined))
                                      )),

                                      SizedBox(height: 20,),
                                      Container(height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                                      child: ElevatedButton(onPressed: (){}, 
                                      child: Text("Register", 
                                      style: TextStyle(fontSize: 20, color: secondaryColor),
                                      ), 
                                      style: ElevatedButton.styleFrom(
                                        primary: primaryColor, 
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15))))),

                                        SizedBox(height: 10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Already have account?", style: TextStyle(color: primaryColor, fontSize: 18)),
                                             Text("Login" ,style: TextStyle(color: dangerColor, fontSize: 18))
                                          ],
                                        ),
                                        SizedBox(height: defaultMargin,),




                                    ],
                                  ),
                                ) ,
                              ),
                            )
                          ],
                        );
                    },);
                  });

            }, 

            

            
            child: Text("Create Account", 
            style: TextStyle(fontSize: 20, color: primaryColor),
            ), 
            style: ElevatedButton.styleFrom(
              primary: secondaryColor, 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))))),


            SizedBox(height: 15,),
            Container(height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
            child: ElevatedButton(onPressed: (){
              //tampilan  login
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context, builder: (context){
                    return StatefulBuilder(builder:(BuildContext context, StateSetter setState){
                        return Wrap(
                          children: [
                            //bagian regis

                            Container(
                              color: Colors.transparent,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(40), 
                                  topLeft: Radius.circular(40)
                                  )
                                ),
                                child:Container(
                                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //jarak
                                      SizedBox(height: 25,),
                                      Row(
                                        children: [
                                        Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Welcome Back!!", style: TextStyle(fontSize: 20, color: blackColor),),
                                            Text("Login", style: TextStyle(fontSize: 30, color: blackColor, fontWeight: FontWeight.bold),),
                                
                                          ],
                                        ),
                                        Spacer(),
                                        Center(child: InkWell
                                        (onTap:(){
                                          //ketika icon ditekan
                                          Navigator.pop(context);
                                        },
                                        child: Image.asset('assets/image/cancel.png', height: 30, width: 30,)))
                                
                                
                                      ],),

                                      SizedBox(height: 25,),
                                      TextField(
                                        obscureText: _isHidden,
                                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                      hintText: "Infoexample.com",
                                      labelText: "Username/Email",
                                      suffixIcon: InkWell(onTap: _tootleUsernameView
                                      , child: Icon(
                                        _isHidden ?
                                        Icons.visibility_outlined : Icons.visibility_off_outlined))
                                      )),
                                    
                                      SizedBox(height: 20,),
                                      TextField(
                                        obscureText: _isHiddenPassword,
                                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                                      hintText: "Password",
                                      labelText: "Password",
                                      suffixIcon: InkWell(onTap: _tootlePasswordView, 
                                      child: Icon(
                                        _isHiddenPassword ?
                                        Icons.lock_outlined : Icons.lock_open_outlined))
                                      )),
                                        SizedBox(height: 20,),
                                        Row(
                                          children: [
                                            Container(width: 20, height: 20, decoration: BoxDecoration(
                                              color: Color(0xFFD7D7D7),
                                              border: Border.all(color: primaryColor, width: 3), borderRadius: BorderRadius.circular(5)
                                            ), child: Checkbox(
                                              value: _isChecked,
                                              checkColor:Color(0xFFD7D7D7) ,
                                              onChanged: (value){
                                                setState((){
                                                  this._isChecked  ;

                                                });
                                              },
                                            ),
                                            ),
                                            SizedBox(width: 5),
                                            Text("Remember me", style: TextStyle(color: primaryColor, fontSize: 12)),Spacer(), Text("Forgot Password?", style: TextStyle(color: primaryColor, fontSize: 12))
                                          ]
                                        ),

                                      SizedBox(height: 20,),
                                      Container(height: 60, width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                                      child: ElevatedButton(onPressed: (){}, 
                                      child: Text("Login", 
                                      style: TextStyle(fontSize: 20, color: secondaryColor),
                                      ), 
                                      style: ElevatedButton.styleFrom(
                                        primary: primaryColor, 
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15))))),

                                        SizedBox(height: 10,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Don't have account?", style: TextStyle(color: primaryColor, fontSize: 18)),
                                             Text("Register" ,style: TextStyle(color: dangerColor, fontSize: 18))
                                          ],
                                        ),
                                        SizedBox(height: defaultMargin,),




                                    ],
                                  ),
                                ) ,
                              ),
                            )
                          ],
                        );
                    },);
                  });

            }, 
            child: Text("Login", 
            style: TextStyle(fontSize: 20, color: secondaryColor),
            ), 
            style: ElevatedButton.styleFrom(
              primary: primaryColor, 
              shape: RoundedRectangleBorder(
                side: BorderSide(color: secondaryColor,width: 3),
                borderRadius: BorderRadius.circular(15))))),

          ],

        ),
      ),
    );
  }

void _tootleUsernameView(){
  setState(() {
    _isHidden = !_isHidden;
  });
}

void _tootlePasswordView(){
  setState(() {
    _isHiddenPassword = !_isHiddenPassword;
  });
}

void _tootleConfirmPasswordView(){
  setState(() {
    _isHiddenConfirmPassword = !_isHiddenConfirmPassword;
  });
}


}