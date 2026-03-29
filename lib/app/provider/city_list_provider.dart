// import 'package:koora_kick/common/cities/domain/models/city_model.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../models/city/city_model.dart';
//
// class CityListNotifier extends StateNotifier<List<CityModel>> {
//         CityListNotifier()
//             : super([
//                 CityModel(cityName: "Abu Hail"),
//                 CityModel(cityName: "Al Barsha"),
//                 CityModel(cityName: "Al Furjan"),
//                 CityModel(cityName: "Al Jaddaf"),
//                 CityModel(cityName: "Al Karama"),
//                 CityModel(cityName: "Al Nahda"),
//                 CityModel(cityName: "Al Quoz"),
//                 CityModel(cityName: "Al Qusais"),
//                 CityModel(cityName: "Arabian Ranches"),
//                 CityModel(cityName: "Bur Dubai"),
//                 CityModel(cityName: "Business Bay"),
//                 CityModel(cityName: "City Walk"),
//                 CityModel(cityName: "Deira"),
//                 CityModel(cityName: "Discovery Gardens"),
//                 CityModel(cityName: "Downtown Dubai"),
//                 CityModel(cityName: "Dubai"),
//                 CityModel(cityName: "Dubai Creek Harbour"),
//                 CityModel(cityName: "Dubai Hills"),
//                 CityModel(cityName: "Dubai Investment Park (DIP)"),
//                 CityModel(cityName: "Dubai Marina"),
//                 CityModel(cityName: "Dubai Silicon Oasis"),
//                 CityModel(cityName: "Dubai South"),
//                 CityModel(cityName: "Emirates Hills"),
//                 CityModel(cityName: "International City"),
//                 CityModel(cityName: "Jebel Ali"),
//                 CityModel(cityName: "Jumeirah"),
//                 CityModel(cityName: "Jumeirah Beach Residence"),
//                 CityModel(cityName: "Jumeirah Golf Estates"),
//                 CityModel(cityName: "Jumeirah Lake Towers"),
//                 CityModel(cityName: "Jumeirah Village Circle"),
//                 CityModel(cityName: "Jumeirah Village Triangle"),
//                 CityModel(cityName: "Karama"),
//                 CityModel(cityName: "Mirdif"),
//                 CityModel(cityName: "Motor City"),
//                 CityModel(cityName: "Nad Al Sheba"),
//                 CityModel(cityName: "Palm Jumeirah"),
//                 CityModel(cityName: "Satwa"),
//                 CityModel(cityName: "Silicon Oasis"),
//                 CityModel(cityName: "Sports City"),
//                 CityModel(cityName: "Tecom"),
//                 CityModel(cityName: "The Greens"),
//                 CityModel(cityName: "The Lakes"),
//                 CityModel(cityName: "The Meadows"),
//                 CityModel(cityName: "The Springs"),
//                 CityModel(cityName: "The Sustainable City"),
//                 CityModel(cityName: "Umm Al Sheif"),
//                 CityModel(cityName: "Umm Suqeim"),
//         ]..sort((a, b) => a.cityName.compareTo(b.cityName)));
//
//
//         void toggleSelection(String selectedCityName) {
//     state = state
//         .map((city) => city.cityName == selectedCityName
//             ? city.copyWith(isSelected: true)
//             : city.copyWith(isSelected: false))
//         .toList();
//   }
// }
//
// // Global provider
// final cityListProvider =
//     StateNotifierProvider<CityListNotifier, List<CityModel>>(
//         (ref) => CityListNotifier());
