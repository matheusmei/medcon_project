
import 'package:medcon_project_college/layers/domain/entities/medicine_entity.dart';

class MedicineModel {
  String name;
  String dosage;
  String frequency;
  String clinicalIndication;
  MedicineModel({
    required this.name,
    required this.dosage,
    required this.frequency,
    required this.clinicalIndication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'dosage': dosage,
      'frequency': frequency,
      'clinicalIndication': clinicalIndication,
    };
  }

  factory MedicineModel.fromMap(Map<String, dynamic> map) {
    return MedicineModel(
      name: map['name'] as String,
      dosage: map['dosage'] as String,
      frequency: map['frequency'] as String,
      clinicalIndication: map['clinicalIndication'] as String,
    );
  }

  MedicineEntity toEntity() => MedicineEntity(
    name: name,
    dosage: dosage,
    frequency: frequency,
    clinicalIndication: clinicalIndication,
  );


}
