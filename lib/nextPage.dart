import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             UsernameTextField(),
             PasswordTextField(),
             SizedBox(height: 20),
             loginButton(),
             SizedBox(height: 20),
             RegisterButton(),
          ],
        ),
      ),
    );
  }
}
// 要素を個別のwidgetに定義
class UsernameTextField extends StatelessWidget{
  const UsernameTextField({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'ユーザー名',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget{
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Padding(
   //   verticalが上下で、horizontalが左右。
   //   4つのパラメータ記入で四方向も可能
   //   allで一気に設定もできる
   padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
     child: TextField(
       obscureText: true,
       decoration: InputDecoration(
         labelText: 'パスワード',
         border: OutlineInputBorder(
           borderRadius:BorderRadius.circular(10.0),
         ),
       ),
     ),
   );
  }
}

class loginButton extends StatelessWidget{
  const loginButton({super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        textStyle: const TextStyle(fontSize: 16),
      ),
        onPressed: () {},
      child: Text('ログイン'),
    );
  }
}

//新規登録ボタン　Registerボタン
class RegisterButton extends StatelessWidget{
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextButton(
      onPressed: () {},
      child: const Text('新規登録はこちら',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 14,
      ),
      ),
    );
  }
}

