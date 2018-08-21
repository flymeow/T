import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchoolList extends StatefulWidget {
	SchoolList({Key key, this.id, this.index});

	final String id;
	final int index;

	@override
	SchoolListState createState() => new SchoolListState();
}

class SchoolListState extends State<SchoolList> with AutomaticKeepAliveClientMixin {

	BuildContext c;
	List products = [];

	@override
	void initState() {
		super.initState();
		print("into");
	}

	@override
	Widget build(BuildContext context) {
		return Column(
			children: <Widget>[
				Expanded(
					child: Container(
						child: CustomScrollView(
							slivers: <Widget>[
								SliverAppBar(
									flexibleSpace: Container(
										child: Image(image: AssetImage("assets/images/4.jpeg"))
									),
									expandedHeight: 100.0,
									backgroundColor: Colors.white,
								),
								new SliverGrid(
									gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
										maxCrossAxisExtent: (MediaQuery.of(context).size.width) / 2,
										childAspectRatio: 0.62,
									),
									delegate: new SliverChildBuilderDelegate(
												(BuildContext context, int index) {
											return Center(
													child: GestureDetector(
														onTap: () {

														},

													));
										},
										childCount: products.length,
									),
								)
							],
						),
						padding: new EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
					))
			],
		);
	}

	@override
	bool get wantKeepAlive {
		return true;
	}
}
