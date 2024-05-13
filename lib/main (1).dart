import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Newgame1(),
    );
  }
}

class Newgame1 extends StatefulWidget {
  const Newgame1({super.key});

  @override
  State<Newgame1> createState() => _Newgame1State();
}

class _Newgame1State extends State<Newgame1> {
  // 配列データはカンマで区切る（定義するとしたら）
  // この配列は、下の食材から追加されたお弁当に表示される食材一覧になると思うので最初は空でいいと思います
  List<String> sideDishList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('今日のお弁当'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset('assets/お弁当箱.png'),
              Wrap(
                children: sideDishList.map((e) => Image.asset(e)).toList(),
              ),
            ],
          ),
          Column(
            children: [
              Center(
                child: Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,
                  spacing: 8.0,
                  runAlignment: WrapAlignment.spaceBetween,
                  runSpacing: 16.0,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // すでに配列データをtoListしなくてOKです。
                        print(sideDishList.toList());
                        // ここでsideDishListに追加したい画像のパスを追加してください。
                        setState(() {
                          sideDishList.add('assets/ウインナー.png');
                        });
                      },
                      child: Image.asset('assets/ウインナー.png'),
                    ),
                    GestureDetector(
                      onTap: () {
                        print(sideDishList.toList());
                      },
                      child: Image.asset('assets/おにぎり.png'),
                    ),
                    GestureDetector(
                      onTap: () {
                        print(sideDishList.toList());
                      },
                      child: Image.asset('assets/トマト.png'),
                    ),
                    GestureDetector(
                      onTap: () {
                        print(sideDishList.toList());
                      },
                      child: Image.asset('assets/ブロッコリー.png'),
                    ),
                    GestureDetector(
                      onTap: () {
                        print(sideDishList.toList());
                      },
                      child: Image.asset('assets/卵焼き１.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
