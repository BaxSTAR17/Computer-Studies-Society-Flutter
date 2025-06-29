import 'package:computerstudiessociety/pages/colors.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final List<Map<String, String>> data = [
    {
      "Description": "Partial Council Fee",
      "Amount": "300",
      "Status": "NOT PAID"
    },
    {
      "Description": "Partial Council Fee",
      "Amount": "300",
      "Status": "PAID"
    },
    {
      "Description": "Partial Council Fee",
      "Amount": "300",
      "Status": "NOT PAID"
    },
    {
      "Description": "Total Payments",
      "Amount": "600",
      "Status": "-"
    },
    {
      "Description": "Interest Rate for the Council Fee for July 2025",
      "Amount": "12",
      "Status": "-"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryCol,
        leading: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: primaryCol
          ),
          child: Icon(Icons.arrow_back, size: 30, color: lightGray)
        )
      ),
      body: ListView(
        padding: EdgeInsets.all(5),
        children: [
          Text("Breakdown of Payments", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          )),
          Divider(color: Colors.black, thickness: 5,),
          FittedBox(
            child: DataTable(
              headingRowColor: WidgetStateColor.resolveWith(
                (Set<WidgetState> status) {
                  return mainBlue;
                }
              ),
              border: TableBorder.all(color: Colors.black, width: 1.0),
              headingRowHeight: 30,
              columns: [
                DataColumn(
                  columnWidth: FixedColumnWidth(220),
                  headingRowAlignment: MainAxisAlignment.center,
                  label: Text("Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ),
                DataColumn(
                  headingRowAlignment: MainAxisAlignment.center,
                  label: Text("Amount",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ),
                DataColumn(
                  headingRowAlignment: MainAxisAlignment.center,
                  label: Text("Status",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  )
                )
              ], 
              rows: data.map((row) => DataRow(
                cells: [
                  DataCell(Text(row["Description"].toString())),
                  DataCell(Text(row["Amount"].toString())),
                  DataCell(
                    Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          color: row["Status"].toString() == "-" ? Color.fromARGB(0, 0, 0, 0) : row["Status"].toString() == "PAID" ?Colors.lightGreen : Colors.red.shade900,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            row["Status"].toString(),
                            style: TextStyle(
                              color: row["Status"].toString() == "-" ? Colors.black : Colors.white,
                            ),
                          )
                        )
                      ),
                    )
                  
                ]
              )).toList()
            ),
          ),
        ],
      )
    );
  }
}