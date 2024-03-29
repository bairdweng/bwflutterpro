import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: getItems()),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  getItems() {
    var items = <Widget>[];
    for (var i = 0; i < 20; i++) {
      items.add(GestureDetector(
        child: Container(
          color: Colors.white,
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: <Widget>[
              Container(
                  height: 49,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://upload-images.jianshu.io/upload_images/13222938-bd0773697b4bcd5a.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/360/format/webp'))),
                              margin: const EdgeInsets.fromLTRB(15, 0, 0, 0)),
                          Container(
                            width: 250,
                            margin: const EdgeInsets.fromLTRB(15, 0, 20, 0),
                            child: Text(
                              "我是一个标题啊啊2啊1231231231123123123123122",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ]),
                        Container(
                          color: Colors.red,
                          width: 10,
                          height: 10,
                          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        )
                      ])),
              //线
              Container(
                height: 1,
                color: Colors.grey[300],
                margin: const EdgeInsets.all(0),
              )
            ],
          ),
          height: 50,
        ),
        onTap: () {
          pushPageByIndex(i);
        },
      ));
    }
    return items;
  }

  void pushPageByIndex(int index) {
    Navigator.pushNamed(context, '/userinfo',
        arguments: {'userName': '哈哈哈哈' + index.toString()});
  }
}
