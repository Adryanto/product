import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ProductServices {
  final DatabaseReference _database =
      FirebaseDatabase.instance.ref().child('product_list');

  Stream<Map<String, String>> getProductList() {
    return _database.onValue.map((event) {
      final Map<String, String> items = {};
      DataSnapshot snapshot = event.snapshot;
      if (snapshot.value != null) {
        Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] =
              'Nama Produk\t\t: ${value['nama_produk']} \nkode produk\t\t\t\t: ${value['kode_produk']}';
        });
      }
      return items;
    });
  }

  void addProductItem(String nama_produk, kode_produk, BuildContext context) {
    if (nama_produk.isEmpty || kode_produk.isEmpty) {
      const warning = SnackBar(content: Text("Data yang diinput harus diisi"));
      ScaffoldMessenger.of(context).showSnackBar(warning);
    } else {
      _database
          .push()
          .set({'nama_produk': nama_produk, 'kode_produk': kode_produk});
    }
  }

  Future<void> removeProductItem(String key) async {
    await _database.child(key).remove();
  }
}
