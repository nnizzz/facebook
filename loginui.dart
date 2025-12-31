import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/openscrnfb.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class logui extends StatelessWidget {
  logui({super.key});

  
  final String username = 'admin';
  final String password = '123';

  
  final TextEditingController uname = TextEditingController();
  final TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4E6BAA),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                FaIcon(FontAwesomeIcons.facebook,
                size: 50,
                color: Colors.white,),

                SizedBox(height: 20,),

                Text(
                  "facebook",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),


               SizedBox(height: 40),

                TextField(
                  controller: uname,
                  decoration: InputDecoration(
                    hintText: "Email or Phone Number",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

              SizedBox(height: 12),

                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_rounded)),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

              SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      if (uname.text.isNotEmpty && pass.text.isNotEmpty) {
                        if (uname.text == username &&
                            pass.text == password) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => fbopen(),
                            ),
                          );

                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('Email or Password is incorrect'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Fields must not be empty'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff3B5998),
                      elevation: 0,
                    ),
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                Text(
                  "Sign in",
                  style: TextStyle(color: Colors.white),
                ),

                const SizedBox(height: 10),

                Text(
                  "Need Help ?",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
