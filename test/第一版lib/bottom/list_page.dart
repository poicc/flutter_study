import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Wrap(
        spacing: 15, //主轴上子控件的间距
        runSpacing: 35, //交叉轴上子控件之间的间距
        children: [
          SizedBox(
            width: 150,
            height: 250,
            child: Wrap(
              spacing: 45,
              children: const [
                Image(
                    width: 150,
                    height: 250,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/12373451/pexels-photo-12373451.jpeg?cs=srgb&dl=pexels-josh-hild-12373451.jpg&fm=jpg')),
                Text("疯狂星期四", style: TextStyle(fontSize: 16)),
                Text("1231132", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          SizedBox(
            width: 150,
            height: 250,
            child: Wrap(
              spacing: 45,
              children: const [
                Image(
                    width: 150,
                    height: 250,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/12168556/pexels-photo-12168556.jpeg?cs=srgb&dl=pexels-nina-hill-12168556.jpg&fm=jpg')),
                Text("疯狂星期四", style: TextStyle(fontSize: 16)),
                Text("1231132", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          SizedBox(
            width: 150,
            height: 250,
            child: Wrap(
              spacing: 45,
              children: const [
                Image(
                    width: 150,
                    height: 250,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/10836627/pexels-photo-10836627.jpeg?cs=srgb&dl=pexels-gije-cho-10836627.jpg&fm=jpg')),
                Text("疯狂星期四", style: TextStyle(fontSize: 16)),
                Text("1231132", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
          SizedBox(
            width: 150,
            height: 250,
            child: Wrap(
              spacing: 45,
              children: const [
                Image(
                    width: 150,
                    height: 250,
                    image: NetworkImage(
                        'https://images.pexels.com/photos/10970424/pexels-photo-10970424.jpeg?cs=srgb&dl=pexels-camila-ben%C3%ADtez-10970424.jpg&fm=jpg')),
                Text("疯狂星期四", style: TextStyle(fontSize: 16)),
                Text("1231132", style: TextStyle(color: Colors.grey))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
