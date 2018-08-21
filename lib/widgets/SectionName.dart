import 'package:flutter/material.dart';

class SectionName extends StatelessWidget {
	final String title;
	final TextStyle style;
	final TextAlign align;

	const SectionName({Key key, this.title, this.style, this.align}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Container(
			child: Padding(
				padding: EdgeInsets.only(top: 8.0),
				child: Text(
					title,
					style: style,
					textAlign: align,
				),
			),
		);
	}
}