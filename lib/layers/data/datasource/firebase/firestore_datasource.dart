import 'package:medcon_project_college/layers/data/datasource/firebase/firestore_error_type.dart';
import 'package:medcon_project_college/layers/domain/helpers/resource.dart';

abstract class FirestoreDataSource{
  Future<Resource<Map<String, dynamic>, FirestoreErrorType>> setDocument({
    
    required String path,
    required String documentId,
    required Map<String, dynamic> object,
  });
    Future<Resource<Map<String, dynamic>, FirestoreErrorType>> addDocument({
    required String path,
    required Map<String, dynamic> object,
  });
}