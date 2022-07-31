import 'package:orderit/utils/secure_storage.dart';

abstract class IProductRepository {}

class ProductRepository implements IProductRepository {
  final SecureStorage _secureStorage = const SecureStorage();
}
