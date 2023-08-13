import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/core/widgets/item_model.dart';

class Store {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  addProduct(ItemModel item) {
    _firestore.collection(kItemCollection).add({
      kProductName: item.name,
      kProductPrice: item.price,
      kProductLocation: item.imagePath,
      kProductStar: item.star,
      kProductCategory: item.category,
      kProductDescription: item.description,
    });
  }

  Stream<QuerySnapshot> loadProducts() {
    return _firestore.collection(kItemCollection).snapshots();
  }

  Stream<DocumentSnapshot> loadOrderDetails(documentId) {
    return _firestore.collection(kItemCollection).doc(documentId).snapshots();
  }

  deleteProduct(documentId) {
    _firestore.collection(kItemCollection).doc(documentId).delete();
  }

  editProduct(data, documentId) {
    _firestore.collection(kItemCollection).doc(documentId).update(data);
  }
}
