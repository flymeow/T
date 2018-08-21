import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class IndexBanner extends StatelessWidget{
	final images = [
		"assets/images/1.jpeg",
		"assets/images/2.jpeg",
		"assets/images/3.jpg",
		"assets/images/4.jpeg",
	];

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Column(
				children: <Widget>[
					new SizedBox(
						height: 160.0,
						child: Swiper(
							itemBuilder: (BuildContext context, int index) {
//								return new Image.asset(
//									images[index],
//									fit: BoxFit.fill,
//								);
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
							viewportFraction: 0.8,
							scale: 0.9,
							autoplay:true,
							itemCount: images.length,
							reverse: false,
//							pagination: new SwiperPagination(),
						),
					),
				],
			),
		);
	}
}

class Marquee extends StatelessWidget {
	final texts = [
		{"name":"直播推荐","url":"/xx/xx","text":"红心火龙果3块九毛八", "state":1},
		{"name":"直播推荐","url":"/xx/xx", "text":"红心火龙果3块九毛八","state":2},
		{"name":"直播中","url":"/xx/xx","text":"红心火龙果3块九毛八", "state":3},
		{"name":"直播推荐","url":"/xx/xx", "text":"红心火龙果3块九毛八","state":4},
	];
	final status = {
		1:"即将开始",
		2:"即将结束",
		3:"进行中",
		4:"已结束",
	};

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Column(
				children: <Widget>[
					new SizedBox(
						height: 30.0,
						child: Swiper(
							itemBuilder: (BuildContext context, int index) {
								return new Row(
									children: <Widget>[
										new Padding(
											padding: new EdgeInsets.only(left: 5.0,right: 5.0),
											child: Text(texts[index]["name"]),
										),
										new Padding(
											padding: new EdgeInsets.only(left: 5.0,right: 5.0),
											child: Text(texts[index]["text"]),
										),
										Text(status[texts[index]["state"]],style: TextStyle(color:  Colors.redAccent)),
									],
								);
//								return Text(texts[index]["name"]);
							},
							autoplay:true,
							itemCount: texts.length,
							scrollDirection: Axis.vertical,
							reverse: false,
							autoplayDelay: 5000,
//							pagination: new SwiperPagination(),
						),
					),
				],
			),
		);
    }
}