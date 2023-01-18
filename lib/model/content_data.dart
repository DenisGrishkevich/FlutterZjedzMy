import 'dart:collection';
import 'content.dart';
import 'package:flutter/foundation.dart';

class ContentData extends ChangeNotifier {
  List<Content> _contents = [
    Content(
        image: 'images/09.jpeg',
        title: 'Ololo Kebab',
        rating: '4.9',
        ratingPeople: '231',
        distanceTo: '3.57'),
    Content(
        image: 'images/65.jpeg',
        title: 'Doner Kebab',
        rating: '4.6',
        ratingPeople: '31',
        distanceTo: '3.21'),
    Content(
        image: 'images/78.jpeg',
        title: 'Berlin Kebab',
        rating: '5.0',
        ratingPeople: '648',
        distanceTo: '1.29'),
  ];
  String _selectedCity = 'Warszawa';
  String _selectedDate = '2023-01-10';
  String _selectedPerson = '2 os.';

  String get city {
    return _selectedCity;
  }

  String get date {
    return _selectedDate;
  }

  String get person {
    return _selectedPerson;
  }

  void updateCity(String newCity) {
    _selectedCity = newCity;
    notifyListeners();
  }

  void updateDate(DateTime newDate) {
    _selectedDate = newDate.toString().substring(0, 10);
    notifyListeners();
  }

  void updatePerson(String newPerson) {
    _selectedPerson = newPerson;
    notifyListeners();
  }

  int get contentCount {
    return _contents.length;
  }

  UnmodifiableListView<Content> get contents {
    return UnmodifiableListView(_contents);
  }
}
