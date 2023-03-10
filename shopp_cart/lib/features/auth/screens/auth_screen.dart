import 'package:flutter/material.dart';
import 'package:shopp_cart/Constants/global_variables.dart';
import 'package:shopp_cart/features/auth/common/custombutton.dart';
import 'package:shopp_cart/features/auth/common/customfield.dart';
import 'package:flutter/services.dart';

enum Auth { signin, signup }

class AuthScreen extends StatefulWidget {
  static const String routname = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _singinFormkey = GlobalKey<FormState>();
  final _singupFormkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      appBar: AppBar(
          backgroundColor: GlobalVariables.greyBackgroundCOlor,
          elevation: 0,
          toolbarHeight: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: GlobalVariables.greyBackgroundCOlor,
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListTile(
                tileColor: (_auth == Auth.signup)
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: (value) {
                    setState(() {
                      _auth = value!;
                    });
                  },
                ),
                title: Text(
                  "Create Account",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (_auth == Auth.signup)
                Container(
                  padding: EdgeInsets.all(9.0),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _singinFormkey,
                    child: Column(
                      children: [
                        CustomField(
                            controller: _nameController, hintext: "Name"),
                        CustomField(
                            controller: _emailController, hintext: "E-mail"),
                        CustomField(
                            controller: _passwordController,
                            hintext: "Password"),
                        const SizedBox(
                          height: 9,
                        ),
                        CustomButton(Txt: "Sign Up", onTap: () {}),
                      ],
                    ),
                  ),
                ),
              ListTile(
                tileColor: (_auth == Auth.signin)
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundCOlor,
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (value) {
                    setState(() {
                      _auth = value!;
                    });
                  },
                ),
                title: Text(
                  "Sign-in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              if (_auth == Auth.signin)
                Container(
                  padding: EdgeInsets.all(9.0),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _singupFormkey,
                    child: Column(children: [
                      CustomField(
                          controller: _emailController, hintext: "E-mail"),
                      CustomField(
                          controller: _passwordController, hintext: "Password"),
                      const SizedBox(
                        height: 9,
                      ),
                      CustomButton(Txt: "Sign In", onTap: () {}),
                    ]),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
