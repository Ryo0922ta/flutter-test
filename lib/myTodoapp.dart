import 'package:flutter/material.dart';
import 'nextPage.dart';
import 'userList.dart';


class MyTodoApp extends StatelessWidget{
  // Stateless 状態を持たない　つまり　基本的に起動中変化のしないWidget
  // 継承している親クラスにkeyを渡している
  // javaのデフォルコンストラクタのようなもの
  // コンストラクタはクラスが呼び出される時に最初に呼び出される関数
  const MyTodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // ThemeData クラスである。このクラスは MaterialApp
        // またはアプリ内のWidgetツリーの全体的なビジュアルテーマをカスタマイズするためのクラス
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      //   Material3とはデザインの色を決めるパラメータ
      ),
      home: const MyHomePage(title: '涼太 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // Stateful 起動中画面変化を期待しているwidget。　つまり,状態を管理できる
  const MyHomePage({super.key, required this.title});

  final String title;

  //State<MyHomePage> createState(){
  // return _MyHomePageState();
  // }
  @override
  State<MyHomePage> createState() => _MyHomePageState();
  //上記のコードはこのWidgetをどのように管理するかを示している
  // createState()はStatefulWidgetが呼び出される際に実行されるメソッド
  // 今回引数が　_MyHomePageState() でそれがどんな型を持ったものかを
  // State<MyHomePage> で示している。
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // late は初期化を遅らせる宣言である　Dartで使われる型
  late String _text= "test";

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }
  void _testFunc() {
    setState(() {
      _text = "hello test";
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold は土台、作業台という意味
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        // Column が縦に並べるためもの　rowが横に並べるためのもの
        child: Column(
          // mainAxisAlignment  文字が表示される位置を決める
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // children はリストのwidgetをとる
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text("test"),
            const Text("hell world", style: TextStyle(fontStyle: FontStyle.italic)),
            // サイズ,背景,余白,枠線,などを指定できる
            Container(
              // 背景色
              width: 40,
              color: Colors.blue,
              // 単一なWidgetをとれる
              child: Text('blue'),
            ),
            Container(
              // 横幅
              width: 200,
              // 縦幅
              height: 50,
              color: Colors.pink,
              child: const Text('200x50'),
            ),
            Container(
              // 内側の文字に対して余白ができる
              padding: const EdgeInsets.all(25),
              color: Colors.blue,
              child: const Text('padding'),
            ),
            Container(
              color: Colors.blue,
              child: Container(
                // 外側の余白
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: Text('margin'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  onPressed: _testFunc,
                  child: Text("textButton"),
                ),
                ElevatedButton(
                    child: Text('Next page'),
                    onPressed: (){
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                  }
                  ),
                ElevatedButton(
                    child: Text('Next user page'),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserList()),
                      );
                    }
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}