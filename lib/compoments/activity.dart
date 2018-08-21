import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



class Activity extends StatelessWidget {
	final images = [
		"assets/images/1.jpeg",
		"assets/images/2.jpeg",
		"assets/images/3.jpg",
		"assets/images/4.jpeg",
	];

	Widget build(BuildContext context) {
		return Container(
			margin: EdgeInsets.only(top: 8.0),
			decoration: BoxDecoration(
//				color: Colors.white,
//				borderRadius: BorderRadius.only(
//					bottomLeft: Radius.circular(5.0), topLeft: Radius.circular(5.0)
//				)
			),
			child: new Column(
				children: <Widget>[
					new Row(
						children: <Widget>[
							new Expanded(
								flex: 1,
								child: new Column(
									crossAxisAlignment: CrossAxisAlignment.start,//子组件的在交叉轴的对齐方式为起点
									children: <Widget>[
										new Container(
											decoration: BoxDecoration(
													color: Colors.white
											),
											width: MediaQuery.of(context).size.width/2-2,
											padding: EdgeInsets.all(8.0),
											child: Column(
												children: <Widget>[
													new Container(
															padding:const EdgeInsets.only( right:13.0,),
															margin: EdgeInsets.only(bottom: 5.0),
															child:new Row(
																mainAxisAlignment: MainAxisAlignment.spaceBetween,//子组件在主轴的排列方式为两端对齐
																children: <Widget>[
																	new Text(
																		'买赠活动',
																	),
																	new Text(
																		'更多',
																	),
																],
															)

													),

													new Container(
															child: new SizedBox(
																height: 100.0,
//													width: MediaQuery.of(context).size.width/2-20,
																child: Swiper(
																	itemBuilder: (BuildContext context, int index) {
																		return Container(
																			decoration: BoxDecoration(
																				image: DecorationImage(
																					image: AssetImage(images[index]),
																					fit: BoxFit.fill,
																				),
																				borderRadius: BorderRadius.all(
																					Radius.circular(5.0),
																				),
																			),
																		);
																	},
																	autoplay:true,
																	itemCount: images.length,
																	reverse: false,
																),
															)
													),
												],
											),
										)
									],
								),
							),
							new Expanded(
								flex: 1,
								child: new Column(
									crossAxisAlignment: CrossAxisAlignment.end,//子组件的在交叉轴的对齐方式为起点
									children: <Widget>[
										new Container(
											decoration: BoxDecoration(
													color: Colors.white
											),
											padding: EdgeInsets.all(8.0),
											width: MediaQuery.of(context).size.width/2-2,
											child: Column(
												children: <Widget>[
													new Container(
															padding:const EdgeInsets.only(  right:13.0,),
															margin: EdgeInsets.only(bottom: 5.0),
															child:new Row(
																mainAxisAlignment: MainAxisAlignment.spaceBetween,//子组件在主轴的排列方式为两端对齐
																children: <Widget>[
																	new Text(
																		'套餐活动',
																	),
																	new Text(
																		'更多',
																	),
																],
															)
													),
													new Container(
															child: new SizedBox(
																height: 100.0,
																child: Swiper(
																	itemBuilder: (BuildContext context, int index) {
																		return Container(
																			decoration: BoxDecoration(
																				image: DecorationImage(
																					image: AssetImage(images[index]),
																					fit: BoxFit.fill,
																				),
																				borderRadius: BorderRadius.all(
																					Radius.circular(10.0),
																				),
																			),
																		);
																	},
																	autoplay:true,
																	itemCount: images.length,
																	reverse: false,
																),
															)
													),
												],
											),
										)
									],
								),
							)
						],
					),
					new Container(
						margin: EdgeInsets.only(top: 10.0),
						width: MediaQuery.of(context).size.width,
						decoration: BoxDecoration(
							color: Colors.white,
						),
						child: new Column(
							children: <Widget>[
								Padding(
									padding: EdgeInsets.all(5.0),
									child: Text("秒杀")
								),
								new Container(
									height: 100.0,
									child: new ListView(
										scrollDirection: Axis.horizontal,
										children: <Widget>[
											new Container(
												width: 160.0,
												color: Colors.red,
											),
											new Container(
												width: 160.0,
												color: Colors.blue,
											),
											new Container(
												width: 160.0,
												color: Colors.green,
											),
											new Container(
												width: 160.0,
												color: Colors.yellow,
											),
											new Container(
												width: 160.0,
												color: Colors.orange,
											),
										],
									),
								)
							],
						),
					)
				],

			),
		);
    }
}



