import 'package:flutter/material.dart';
class CartPage extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return new MaterialApp(
			title: 'Flutter Demo',
			theme: new ThemeData(
				primarySwatch: Colors.blue,
			),
			debugShowCheckedModeBanner: false,
			home: new Scaffold(
				body: new Center(child:new Text("购物车")),
			),
		);
	}
}

