import 'package:flutter/material.dart';
import 'package:qrcan/src/widget/default_button.dart';

import '../../../../responsive.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Center(
        child: Container(
          margin: EdgeInsets.only(
            top: heightResponsive(22.03, context),
            bottom: heightResponsive(49.5, context),
          ),
          padding: EdgeInsets.fromLTRB(
            widthResponsive(16.07, context),
            heightResponsive(22.08, context),
            widthResponsive(18.32, context),
            heightResponsive(33.5, context),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  blurRadius: 3,
                  offset: Offset(0.0, 4) // changes position of shadow
                  ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox.shrink(),
              Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(fontSize: heightResponsive(24, context)),
                ),
              ),
              SizedBox(
                height: heightResponsive(16.25, context),
              ),
              _buildUsernameFormField(),
              SizedBox(
                height: heightResponsive(22, context),
              ),
              _buildPasswordFormField(),
              SizedBox(
                height: heightResponsive(16.25, context),
              ),
              DefaultButton(
                text: 'Login',
                color: Color(0xffFFDF5F),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TextFormField _buildUsernameFormField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: "Username",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}

TextFormField _buildPasswordFormField() {
  bool _passwordVisible = false;
  return TextFormField(
    obscureText: !_passwordVisible,
    decoration: InputDecoration(
      suffixIcon: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          _passwordVisible ? Icons.visibility : Icons.visibility_off,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {},
      ),
      labelText: "Password",
      // If  you are using latest version of flutter then lable text and hint text shown like this
      // if you r using flutter less then 1.20.* then maybe this is not working properly
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}
