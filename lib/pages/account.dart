import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget{
	@override
	AccountPageState createState() => new AccountPageState();
}
class AccountPageState extends State<AccountPage>{
	@override
	Widget build(BuildContext context) {
		return new Scaffold(
			appBar: new AppBar(title: new Text("我的"),),
			body: new ListView(
				children: <Widget>[
					new Container(
						padding:const EdgeInsets.only(top: 20.0),
						color: Colors.grey[200],
						child: new Container(
							color: Colors.white,
							height: 80.0,
							child: new ListTile(
								title: new Text("头像名称什么"),
							),
						),
					),
					new Container(
						padding:const EdgeInsets.only(top: 20.0),
						color: Colors.grey[200],
						child: new Container(
							color: Colors.white,
							height: 45.0,
							child: new ListTile(
								title: new Text("我的订单"),
								trailing: new Text("查看全部"),
							),
						),
					),
					new Container(
						color: Colors.white,
						height: 45.0,
						child: new ListTile(
							title: new Text("我的钱包"),
							trailing: new Text("查看"),
						),
					),
					new Container(
						color: Colors.white,
						height: 45.0,
						child: new ListTile(
							title: new Text("我的员工"),
							trailing: new Text("添加"),
						),
					),
				],
			),
		);
	}
}
