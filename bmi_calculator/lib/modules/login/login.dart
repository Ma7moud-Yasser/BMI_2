import 'package:bmi_calculator/modules/bmi/bmi_home.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailControllar = TextEditingController();
  var PassworControllar = TextEditingController();
  var FormKey = GlobalKey<FormState>();
  bool suffixPress = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0C1234),
        /*title: Center(
          child: Text(
            'LOGIN',
          ),
        ),*/
      ),
      body: Container(
        width: double.infinity,
        color: Color(0xff0C1234),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Form(
                key: FormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xffFF0067),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),

                    /// Email
                    defualtFormField(
                      controller: emailControllar,
                      label: 'E-mail',
                      returnMessage: 'Emaillll Address',
                      keyboardType: TextInputType.emailAddress,
                      prefix: Icons.email,
                      color: Colors.amber,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    /// password
                    defualtFormField(
                      controller: PassworControllar,
                      label: 'Password',
                      returnMessage: 'Password Must not be empty',
                      keyboardType: TextInputType.visiblePassword,
                      prefix: Icons.lock,
                      color: Colors.amber,
                      obscure: suffixPress,
                      suffix: !suffixPress
                          ? Icons.visibility
                          : Icons.visibility_off,
                      suffixcolor: Colors.amber,
                      pressButton: () {
                        setState(() {
                          suffixPress = !suffixPress;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    defaultButton(
                      Raduis: 5,
                      Function: () {
                        if (FormKey.currentState!.validate()) {
                          print(emailControllar.text);
                          print(PassworControllar.text);
                        }

                        setState(() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BmiScreen(),
                            ),
                          );
                        });
                      },
                      text: 'login',
                      isUpperCase: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t Have An Acount ?',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Register',
                            style: TextStyle(color: Color(0xffFF0067)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
