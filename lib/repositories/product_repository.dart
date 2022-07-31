import 'package:orderit/constants.dart';
import 'package:orderit/repositories/api_base.dart';

abstract class IProductRepository {}

class ProductRepository extends ApiBase implements IProductRepository {
  Future<void> getProducts() async {
    final response = await dio.get(PRODUCTS);
    if (response.statusCode == 200) {
      // do stuff
    }
  }
}
