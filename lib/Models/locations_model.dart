import 'package:flutter_screenutil/flutter_screenutil.dart';

final List<String> categories = [
  "List",
  "Best",
  "Favourite",
  "Recent",
  "Premium"
];

Map<String, dynamic> getCategoryImage(String category) {
  switch (category) {
    case "List":
      return {
        'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/List.png',
        'width': 30.w
      };
    case "Best":
      return {
        'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/Best.png',
        'width': 35.w
      };
    case "Favourite":
      return {
        'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/Favorite.png',
        'width': 75.w
      };
    case "Recent":
      return {
        'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/Recent.png',
        'width': 55.w
      };
    case "Premium":
      return {
        'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/Premium.png',
        'width': 70.w
      };
    default:
      return {
        'imagepath': 'assets/StarX Vpn Light Mode/Down Bar Line/List.png',
        'width': 20.w
      };
  }
}

final List<List<Map<String, dynamic>>> locationData = [
  [
    // List data
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'United Kingdom',
      "cities": ['Bedford', 'Congleton'],
      "capital": 'London',
    },
    {
      "imagePath": 'assets/StarX Vpn Light Mode/Location Flag Icons/canada.png',
      "countryName": 'Canada',
      "cities": ['City X', 'City Y', 'City Z'],
      "capital": 'Ottawa',
    },
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/germany.png',
      "countryName": 'Germany',
      "cities": ['City X', 'City Y', 'City Z'],
      "capital": 'Berlin',
    },
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/thailand.png',
      "countryName": 'Thailand',
      "cities": ['City X', 'City Y', 'City Z'],
      "capital": 'Bangkok',
    },
    {
      "imagePath": 'assets/StarX Vpn Light Mode/Location Flag Icons/canada.png',
      "countryName": 'Canada',
      "cities": ['City X', 'City Y', 'City Z'],
      "capital": 'Victoria',
    },
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/iceland.png',
      "countryName": 'Iceland',
      "cities": ['City X', 'City Y', 'City Z'],
      "capital": 'Reykjavk',
    },
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/viet-nam.png',
      "countryName": 'Vietnam',
      "cities": ['City X', 'City Y', 'City Z'],
      "capital": 'Ho Chi Minh',
    },
  ],
  [
    // Best data
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'Best Country 1',
      "cities": ['Best City A', 'Best City B', 'Best City C'],
      "capital": 'Best Capital 1',
    },
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'Best Country 2',
      "cities": ['Best City X', 'Best City Y', 'Best City Z'],
      "capital": 'Best Capital 2',
    },
  ],
  [
    // Favourite data
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'Favourite Country 1',
      "cities": ['Favourite City A', 'Favourite City B', 'Favourite City C'],
      "capital": 'Favourite Capital 1',
    },
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'Favourite Country 2',
      "cities": ['Favourite City X', 'Favourite City Y', 'Favourite City Z'],
      "capital": 'Favourite Capital 2',
    },
  ],
  [
    // Recent data
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'Recent Country 1',
      "cities": ['Recent City A', 'Recent City B', 'Recent City C'],
      "capital": 'Recent Capital 1',
    },
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'Recent Country 2',
      "cities": ['Recent City X', 'Recent City Y', 'Recent City Z'],
      "capital": 'Recent Capital 2',
    },
  ],
  [
    // Premium data
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'Premium Country 1',
      "cities": ['Premium City A', 'Premium City B', 'Premium City C'],
      "capital": 'Premium Capital 1',
    },
    {
      "imagePath":
          'assets/StarX Vpn Light Mode/Location Flag Icons/united-kingdom.png',
      "countryName": 'Premium Country 2',
      "cities": ['Premium City X', 'Premium City Y', 'Premium City Z'],
      "capital": 'Premium Capital 2',
    },
  ],
];
