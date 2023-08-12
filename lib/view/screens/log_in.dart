import 'package:flutter/material.dart';
import 'package:travel_app/view/widgets/button.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool isEmailTap = false;
  bool isPasswordTap = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                // alignment: Alignment.topCenter,
                image: AssetImage('asset/images/log_in.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50, left: 30.0),
                child: Text(
                  'Fitness Gym',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              const SizedBox(
                height: 180,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    height: 640,
                    // height: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Login',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Enter you registered email id or contact number and password to login into your account.',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          cuxtomTextField(
                            func: () {
                              setState(() {
                                isEmailTap = !isEmailTap;
                              });
                            },
                            function: (String text) {
                              setState(() {
                                isEmailTap = false;
                              });
                            },
                            controller: emailController,
                            isClicked: isEmailTap,
                            keyboardType: TextInputType.emailAddress,
                            text: 'Email or Contact info',
                            icon: Icons.email,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          cuxtomTextField(
                            func: () {
                              setState(() {
                                isPasswordTap = !isPasswordTap;
                              });
                            },
                            function: (String text) {
                              setState(() {
                                isPasswordTap = false;
                              });
                            },
                            keyboardType: TextInputType.visiblePassword,
                            controller: passwordController,
                            isClicked: isPasswordTap,
                            text: 'Password',
                            icon: Icons.lock,
                            obsecureText: true,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Forgot Password?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Button(
                            radius: 5.0,
                            width: double.infinity,
                            height: 50,
                            color: Colors.deepPurple,
                            child: Center(
                              child: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10.0),
                                height: 1,
                                width: 50,
                                color: Colors.grey.shade400,
                              ),
                              const Text(
                                'OR',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10.0),
                                height: 1,
                                width: 50,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade300, width: 1.0),
                                ),
                                child: Button(
                                  func: (){},
                                  width: 145,
                                  height: 45,
                                  color: Colors.transparent,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const Icon(
                                          Icons.facebook_rounded,
                                          color: Colors.blue,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          'Facebook',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey.shade300, width: 1.0),
                                ),
                                child: Button(
                                  func: (){},
                                  width: 145,
                                  height: 45,
                                  color: Colors.transparent,
                                  child: Container(
                                    margin: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'asset/images/google.png',
                                          fit: BoxFit.cover,
                                          width: 25.0,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          'Google',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Don\'t have an account?'),
                              const SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 7.0),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      const Text(
                                        'Register',
                                        style: TextStyle(
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 5.0),
                                        height: 2,
                                        width: 53,
                                        color: Colors.deepPurple,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class cuxtomTextField extends StatelessWidget {
  IconData icon;
  Color iconColor;
  var func;

  TextInputType keyboardType;
  double radius;
  String text;
  bool isClicked;
  Color borderColor;
  Color labelColor;
  TextEditingController controller = TextEditingController();
  var function;
  bool obsecureText;

  // void function(String text) {}

  cuxtomTextField({
    this.obsecureText = false,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.function,
    this.borderColor = Colors.deepPurple,
    this.labelColor = Colors.deepPurple,
    this.isClicked = false,
    required this.text,
    this.radius = 5.0,
    this.func,
    required this.icon,
    this.iconColor = Colors.grey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: TextFormField(
        obscureText: obsecureText,
        keyboardType: keyboardType,
        controller: controller,
        onTap: func,
        onFieldSubmitted: function,
        decoration: InputDecoration(
          suffixIcon: Icon(
            icon,
            color: iconColor,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          labelText: '$text',
          labelStyle: TextStyle(color: !isClicked ? Colors.grey : labelColor),
        ),
      ),
    );
  }
}
