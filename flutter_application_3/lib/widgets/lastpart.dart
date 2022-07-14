import 'package:flutter/material.dart';

class LastPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(22, 0, 22, 17),
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: InkWell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.report_problem_outlined,
                  color: Color.fromRGBO(37, 138, 86, 1),
                ),
                Text(
                  'Пожаловаться на объявление',
                  style: TextStyle(
                    color: Color.fromRGBO(37, 138, 86, 1),
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
