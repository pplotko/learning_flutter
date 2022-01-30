import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2_appbar/model.dart';


class TaskPage extends StatelessWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyCustomAppBar(/*height: 100,*/),
      body: CenterWidget(),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // final double height;

  const MyCustomAppBar({
    Key? key,
    // this.height,
    // required this.height,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(108);

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[Color(0xFFf9e3ce), Color(0xFFf9e3ce)],
        ),
      ),
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              AppbarLeftSidePlaceholder(),
              AppbarCenterPlaceholder(),
              AppbarRightSidePlaceholder(),
            ],
          ),
        ],
      ),
    );
  }
}

class AppbarLeftSidePlaceholder extends StatelessWidget {
  const AppbarLeftSidePlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<Model>();
    final _value = context.watch<Model>().isMenuPressed;
    print('value = $_value');
    Color menuColor;

    _value ? menuColor = const Color(0xFFE91E63) : menuColor = const Color(0xFF452518);

    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.coffee,
            color: menuColor,
            size: 40,
          ),
          Text('Menu',
            style: TextStyle(
              color: menuColor,
            ),
          ),
        ],
      ),
      onTap: model.menuPressed,
    );
  }
}

class AppbarRightSidePlaceholder extends StatelessWidget {
  const AppbarRightSidePlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<Model>();
    final _value = context.watch<Model>().isAddressPressed;
    print('value = $_value');
    Color menuColor;

    _value ? menuColor = const Color(0xFFE91E63) : menuColor = const Color(0xFF452518);

    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.location_on,
            color: menuColor,
            size: 40,
          ),
          Text('Address',
            style: TextStyle(
              color: menuColor,
            ),
          ),
        ],
      ),
      onTap: model.addressPressed,
    );
  }
}

class AppbarCenterPlaceholder extends StatelessWidget {
  const AppbarCenterPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.read<Model>();
    final _value = context.watch<Model>().isCenterPlaceholderPressed;
    Color shadowColor;

    _value ? shadowColor = const Color(0xFFE91E63) : shadowColor = const Color(0xFFf9e3ce);

    return GestureDetector(
      child: Container(
        // height: 60,
        width: 180,
        decoration: BoxDecoration(
          // border: Border.all(width: 2.5, color: Colors.green),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: const Offset(0, 0),
              blurRadius: 16,
              spreadRadius: 1,
            ),
          ],
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset("assets/images/like_bear.png")),
      ),
      onTap: () {model.centerPlaceholderPressed();},
    );
  }
}

class CenterWidget extends StatelessWidget {
  const CenterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _value = context.watch<Model>().isCenterPlaceholderPressed;
    String imgLink;
    if (_value) {
      imgLink = 'https://media-cldnry.s-nbcnews.com/image/upload/t_nbcnews-fp-1200-630,f_auto,q_auto:best/newscms/2019_33/2203981/171026-better-coffee-boost-se-329p.jpg';
      return Image.network(imgLink);
    }
    else {
      return Container();
    }
  }
}
