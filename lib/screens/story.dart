import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ListView(padding: const EdgeInsets.only(bottom: 20), children: [
        Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim tincidunt risus accumsan diam et egestas lacus. Rhoncus, ut tincidunt neque dolor nisi etiam nulla adipiscing elementum. Dolor at velit nam tempor. Egestas non pellentesque porta justo. Iaculis dis enim sed consectetur. Purus, at felis, duis tortor, in egestas tincidunt risus. Eu quisque arcu, neque, lectus interdum habitant eget purus suspendisse. Malesuada morbi vel vel venenatis, vulputate placerat. At eget eget amet, nec bibendum. Est sed ac pulvinar aliquam, imperdiet. Et magna a ultrices sed.Et ut aliquet cursus dui fringilla. Urna, eget neque posuere varius ut. Diam tincidunt fringilla tincidunt amet, tellus augue. Duis justo, laoreet congue vestibulum. Ut id posuere amet elit id. Odio ligula sit id a. Arcu ornare nullam lacus, augue felis magna eu, nibh neque. Velit enim, risus suspendisse in ipsum sagittis. Nibh hendrerit nisl amet in auctor elementum ac non amet. Faucibus at sed proin vitae amet nunc. Accumsan, volutpat sed nam et, sollicitudin velit neque tincidunt. Mollis velit viverra. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Enim tincidunt risus accumsan diam et egestas lacus. Rhoncus, ut tincidunt neque dolor nisi etiam nulla adipiscing elementum. Dolor at velit nam tempor. Egestas non pellentesque porta justo. Iaculis dis enim sed consectetur. Purus, at felis, duis tortor, in egestas tincidunt risus. Eu quisque arcu, neque, lectus interdum habitant eget purus suspendisse.''',
          style: TextStyle(color: Colors.white, fontSize: 16),
        )
      ]),
    );
  }
}
