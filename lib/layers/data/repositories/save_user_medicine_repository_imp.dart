import 'package:medcon_project_college/layers/domain/entities/medicine_entity.dart';
import 'package:medcon_project_college/layers/domain/repositories/save_user_medicine_repository.dart';

class SaveUserMedicineRepositoryImp implements SaveUserMedicineRepository {
  @override
  Future<bool> call(MedicineEntity medicineEntity) async {
    throw  ArgumentError();
}
 }