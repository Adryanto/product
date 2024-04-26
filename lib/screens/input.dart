import 'package:flutter/material.dart';
import 'package:product/screens/output.dart';
import 'package:product/services/product_services.dart';

class inputScreen extends StatefulWidget {
  const inputScreen({Key? key}) : super(key: key);

  @override
  State<inputScreen> createState() => _inputScreenState();
}

class _inputScreenState extends State<inputScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final ProductServices _productServices = ProductServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Product"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller1,
                    decoration:
                        const InputDecoration(hintText: 'Masukkan Nama Produk'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller2,
                    keyboardType: TextInputType.number,
                    decoration:
                        const InputDecoration(hintText: 'Masukkan Kode Produk'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding:
                EdgeInsets.only(bottom: 16.0), // Memberikan ruang di bawah FAB
            child: FloatingActionButton(
              onPressed: () {
                _productServices.addProductItem(
                    _controller1.text, _controller2.text, context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => outputProduct()),
                );
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.purple, // Ubah warna latar belakang FAB
              elevation: 4, // Berikan efek bayangan pada FAB
              splashColor:
                  Colors.white, // Ubah warna efek splash saat FAB ditekan
            ),
          ),
        ],
      ),
    );
  }
}
