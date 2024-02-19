import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                  "https://images.unsplash.com/photo-1614102073832-030967418971?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              const Text(
                  '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pulvinar ipsum non lacus lacinia accumsan. Nulla ac mollis nisi, a tincidunt lacus. Maecenas in congue tortor. Phasellus rutrum ex non magna sodales, id pellentesque quam rutrum. Fusce laoreet nibh quam, sit amet sollicitudin metus vulputate ut. Sed enim massa, dignissim a mattis et, ultrices sed mauris. Praesent efficitur id odio in tempus. Cras ullamcorper tempor erat sit amet semper. Mauris faucibus elit eu dui lacinia, vel lacinia felis fermentum. Proin malesuada gravida tincidunt.
          
          Praesent diam purus, rutrum a lacinia sed, mattis et tortor. Nunc erat nibh, euismod ut lorem et, elementum auctor est. Mauris varius dolor ac felis tincidunt rutrum. Aenean hendrerit pretium nisi, eu efficitur dolor viverra non. Pellentesque lectus justo, eleifend scelerisque imperdiet vel, faucibus at magna. Sed quam lacus, viverra rutrum euismod vitae, molestie et lo`rem. Ut in scelerisque metus. Suspendisse aliquam, tellus sit amet luctus porta, sapien enim luctus nulla, sit amet lacinia neque tortor vel nisi.
          
          In turpis ligula, finibus vel tempor sed, mattis nec massa. Aliquam erat volutpat. Proin consequat euismod est vitae auctor. Duis nunc ligula, semper ac ultrices ut, ornare quis arcu. Curabitur viverra sapien sem, at congue dolor mattis sed. Morbi eu luctus enim, at tincidunt magna. Suspendisse potenti. Mauris dictum cursus nisl a auctor.
          
          Duis ac massa et tellus fringilla scelerisque sit amet at diam. Praesent lacinia eu est nec fringilla. Etiam suscipit nulla vel ligula dapibus, dictum tempor sapien egestas. Duis consequat vel nunc consectetur tristique. Mauris eget tortor vel mi congue ullamcorper. Aliquam volutpat tortor eu dui sagittis tempus. Vivamus consequat sollicitudin neque, sed viverra tortor faucibus eget. Quisque vestibulum urna in libero luctus pulvinar. Fusce varius, lacus at hendrerit cursus, mauris nunc imperdiet tortor, quis laoreet lorem nulla sed justo. Mauris vel urna cursus massa pellentesque consectetur eget in urna. Maecenas lectus purus, pellentesque et justo vel, convallis congue turpis. Curabitur efficitur eros justo, eget convallis dui tincidunt id.'''),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
