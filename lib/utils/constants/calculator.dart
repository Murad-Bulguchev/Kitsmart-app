// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calculator',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CalculatorPage(),
//     );
//   }
// }

// class CalculatorPage extends StatefulWidget {
//   @override
//   _CalculatorPageState createState() => _CalculatorPageState();
// }

// class _CalculatorPageState extends State<CalculatorPage> {
//   double _count = 20000;
//   int _month = 3;
//   double _firstPayment = 0;
//   double _monthPayment = 0;
//   double _markUp = 0;
//   double _result = 0;
//   double _discount = 0.02;
//   double _countInput = 50000;
//   int _monthInput = 3;
//   bool _isOpen = false;

//   final _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     super.initState();
//     _calculateAll(_count, _month, _discount);
//   }

//   void _handleChangeCount(double value) {
//     setState(() {
//       _countInput = value;
//       _count = value;
//       _calculateAll(value, _month, _discount);
//     });
//   }

//   void _handleChangeMonth(int value) {
//     setState(() {
//       _monthInput = value;
//       _month = value;
//       _calculateAll(_count, value, _discount);
//     });
//   }

//   void _handleInputCount(String value) {
//     if (value.isNotEmpty) {
//       double count = double.parse(value);
//       if (count > 200000) {
//         count = 200000;
//       } else if (count < 8000) {
//         count = 8000;
//       }
//       setState(() {
//         _countInput = count;
//         _count = count;
//         _calculateAll(count, _month, _discount);
//       });
//     }
//   }

//   void _handleInputMonth(String value) {
//     if (value.isNotEmpty) {
//       int month = int.parse(value);
//       if (month > 12) {
//         month = 12;
//       } else if (month < 2) {
//         month = 2;
//       }
//       setState(() {
//         _monthInput = month;
//         _month = month;
//         _calculateAll(_count, month, _discount);
//       });
//     }
//   }

//   void _calculateAll(double newCount, int newMonth, double newDiscount) {
//     double first = (newCount * 0.3) / 100;
//     first = (first * 100).ceil().toDouble() / 100;
//     double markUpPayment =
//         (newDiscount * newMonth * newCount).round().toDouble();
//     double totalPayment = (newCount + markUpPayment).round().toDouble();
//     totalPayment = (totalPayment / 100).ceil().toDouble() * 100;
//     double sumLeft = totalPayment - first;
//     double paymentPerMonth = (sumLeft / newMonth).round().toDouble();
//     paymentPerMonth = (paymentPerMonth / 100).ceil().toDouble() * 100;
//     totalPayment = paymentPerMonth * newMonth + first;
//     markUpPayment = totalPayment - newCount;

//     setState(() {
//       _firstPayment = first;
//       _markUp = markUpPayment;
//       _result = totalPayment;
//       _monthPayment = paymentPerMonth;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calculator'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: RadioListTile(
//                       title: Text('Идеал'),
//                       value: 0.02,
//                       groupValue: _discount,
//                       onChanged: (value) {
//                         setState(() {
//                           _discount =
//                               value ?? 0.0; // Assign 0.0 if value is null
//                           _calculateAll(_count, _month,
//                               value ?? 0.0); // Assign 0.0 if value is null
//                         });
//                       },
//                     ),
//                   ),
//                   Expanded(
//                     child: RadioListTile(
//                       title: Text('Стандарт'),
//                       value: 0.03,
//                       groupValue: _discount,
//                       onChanged: (value) {
//                         setState(() {
//                           _discount =
//                               value ?? 0.0; // Assign 0.0 if value is null
//                           _calculateAll(_count, _month,
//                               value ?? 0.0); // Assign 0.0 if value is null
//                         });
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Стоимость товара',
//                   suffixText: '₽',
//                 ),
//                 initialValue: _countInput.toString(),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Введите стоимость товара';
//                   }
//                   return null;
//                 },
//                 onFieldSubmitted: (value) {
//                   _handleInputCount(value);
//                 },
//               ),
//               Slider(
//                 value: _count,
//                 min: 8000,
//                 max: 200000,
//                 divisions: 392,
//                 label: _count.round().toString(),
//                 onChanged: (value) {
//                   _handleChangeCount(value);
//                 },
//               ),
//               TextFormField(
//                 decoration: InputDecoration(
//                   labelText: 'Сроки рассрочки',
//                   suffixText: 'месяца',
//                 ),
//                 initialValue: _monthInput.toString(),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Введите стоимость товара';
//                   }
//                   return null;
//                 },
//                 onFieldSubmitted: (value) {
//                   _handleInputMonth(value);
//                 },
//               ),
//               Slider(
//                 value: _month.toDouble(),
//                 min: 2,
//                 max: 12,
//                 divisions: 10,
//                 label: _month.round().toString(),
//                 onChanged: (value) {
//                   _handleChangeMonth(value.toInt());
//                 },
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Общая стоимость: ${_result.round()} ₽',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Ежемесячный платеж: ${_monthPayment.round()} ₽',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Первоначальный взнос: ${_firstPayment.round()} ₽',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Торговая наценка: ${_markUp.round()} ₽',
//                 style: TextStyle(fontSize: 16),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _isOpen = true;
//                   });
//                 },
//                 child: Text('Подать заявку'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
