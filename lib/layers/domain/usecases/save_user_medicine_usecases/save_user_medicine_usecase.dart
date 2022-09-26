import 'package:medcon_project_college/layers/domain/entities/medicine_entity.dart';

abstract class SaveUserMedicineUsecase {
  Future<bool> call(MedicineEntity medicineEntity);
}
