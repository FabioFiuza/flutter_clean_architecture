import 'package:flutter_clean_architecture/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

abstract class SaveCityNameUseCase {
  void execute(String cityName);
}

@injectable
@RegisterAs(SaveCityNameUseCase)
class SaveCityName implements SaveCityNameUseCase {
  final Repository repository;

  SaveCityName(this.repository);

  @override
  void execute(String cityName) => repository.saveCityName(cityName);
}
