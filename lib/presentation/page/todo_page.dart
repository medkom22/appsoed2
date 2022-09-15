import 'package:appsoed/common/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [darkBlueColor, blueColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        body: _emptyContent(),
        floatingActionButton: SizedBox(
          height: 75,
          width: 75,
          child: FloatingActionButton(
            backgroundColor: whiteColor,
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: blueColor,
              size: 36,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            'DAILY TASK',
            style: TextStyle(
              color: blackColor,
              fontWeight: bold,
              fontSize: 20,
              letterSpacing: 8.0,
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }

  _emptyContent() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://cdni.iconscout.com/illustration/premium/thumb/businessman-completed-tasks-5037983-4202464.png',
            placeholder: (context, url) => const CircularProgressIndicator(),
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            'Tidak ada tugas yang harus dikerjakan',
            style: TextStyle(
              color: blackColor,
              fontSize: 18,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
