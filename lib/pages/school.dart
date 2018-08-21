import 'package:flutter/material.dart';
import 'package:tcustomer/pages/schoolList.dart';

const List<String> _menus = const <String>[
	"图文",
	"视频",
	"资讯",
	"直播",
];

const List<String> _allId = const <String>[
	"1",
	"2",
	"3",
	"4",
];
class SchoolPage extends StatefulWidget {
	SchoolPage({Key key});

	@override
	SchoolPageState createState() => new SchoolPageState();
}


class SchoolPageState extends State<SchoolPage> with TickerProviderStateMixin{
	TabController controller;

	@override
    void initState() {
        super.initState();
        controller = new TabController(length: _menus.length, vsync: this);
    }

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: new TabBar(
				controller: controller,
				isScrollable: true,
				tabs: _menus.map((data){
					return Container(
						margin: EdgeInsets.all(5.0),
						height: 45.0,
						child: Center(
							child: Text(
								data,
								style: TextStyle(
									color: Color(0xFF191919),
									fontSize: 16.0,
								),
							),
						),
					);
				}).toList(),
				indicatorColor: Colors.redAccent,
			),
			floatingActionButton: FlatButton(onPressed: null,
					child: new Stack(
						children: <Widget>[
							new Icon(Icons.search),
							new Positioned(
								top: 0.0,
								right:0.0,
								child: Container(
								),
							)
						],
					)
			),
			body: TabBarView(
				controller: controller,
				children: _allId.map((id) {
					return SchoolList(id: id);
				}).toList(),
			)
		);
	}
}


