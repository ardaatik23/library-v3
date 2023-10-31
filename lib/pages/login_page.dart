import 'package:flutter/material.dart';
import 'package:kutuphaneapp/pages/category_page.dart';
import 'package:kutuphaneapp/pages/forget_password.dart';

class LoginPageScreen extends StatefulWidget {
  const LoginPageScreen({super.key});

  @override
  State<LoginPageScreen> createState() => _LoginPageScreenState();
}

class _LoginPageScreenState extends State<LoginPageScreen> {
  //ScreenUtil
  final bool selected = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(176, 159, 186, 199),
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: size.height * 0.3,
                    width: size.width * 0.4,
                    child: CircleAvatar(
                      child: Icon(
                        Icons.person,
                        size: size.height * 0.2,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "User Name",
                        )),
                  ),
                  CustomTextFormField("User Name", value: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Align(
                        alignment: Alignment.topLeft, child: Text("Password")),
                  ),
                  CustomTextFormField("Password"),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewPassword(),
                            ));
                      },
                      child: Text(
                        "Sifremi Unuttum",
                        style: TextStyle(color: Color.fromARGB(131, 0, 0, 0)),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CategoryPage(),
                          ));
                    },
                    child: Text("Giris Yap"),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: Text("Hesabım Yok"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  CustomTextFormField(String? hintText, {int? value}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextFormField(
        maxLength: value,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
        ),
      ),
    );
  }
}
