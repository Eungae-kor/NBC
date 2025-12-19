import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SeatBottom extends StatelessWidget {
  SeatBottom(this.selectedRow, this.selectedCol);
  final int? selectedRow;
  final int? selectedCol;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Text(
              selectedRow == null && selectedCol == null
                  ? "선택된 좌석 없음"
                  : "$selectedRow - $selectedCol",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                //
                showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text("예약 확인"),
                      content: Text("예약하시겠습니까?"),
                      actions: [
                        CupertinoDialogAction(
                          child: Text(
                            "취소",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                        CupertinoDialogAction(
                          child: Text(
                            "확인",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },

              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              child: Text(
                "Book now",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
