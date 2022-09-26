import 'package:medcon_project_college/layers/domain/entities/medicine_entity.dart';
import 'package:medcon_project_college/layers/domain/repositories/save_user_medicine_repository.dart';
import 'package:medcon_project_college/layers/domain/usecases/save_user_medicine_usecases/save_user_medicine_usecase.dart';

class SaveUserMedicineUsecaseImp implements SaveUserMedicineUsecase {
  final SaveUserMedicineRepository _saveUserMedicineRepository;

  SaveUserMedicineUsecaseImp(this._saveUserMedicineRepository);

  @override
  Future<bool> call(MedicineEntity medicineEntity) async {
    
    return _saveUserMedicineRepository(medicineEntity);
  }
}
