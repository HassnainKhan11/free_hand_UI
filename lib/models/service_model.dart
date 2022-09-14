class Service {
  final String? employeeName;
  final String? profile_Url;
  final String? catagoryName;
  final String? payment;
  final String? rating;

  Service({
    this.employeeName,
    this.profile_Url,
    this.catagoryName,
    this.payment,
    this.rating,
  });
}

class TimeSlots {
  final String? time;
  bool isSelectedTime;
  TimeSlots({
    this.time,
    required this.isSelectedTime,
  });
}

List<TimeSlots> timesSlots = [
  TimeSlots(
    time: '07:00',
    isSelectedTime: false,
  ),
  TimeSlots(
    time: '08:00',
    isSelectedTime: false,
  ),
  TimeSlots(
    time: '09:00',
    isSelectedTime: false,
  ),
  TimeSlots(
    time: '10:00',
    isSelectedTime: false,
  ),
  TimeSlots(
    time: '12:00',
    isSelectedTime: false,
  ),
];

List<Service> services = [
  Service(
    employeeName: 'Macro Loppo',
    profile_Url: 'plumber.png',
    catagoryName: 'Plumbing',
    payment: '\$80.00/Day',
    rating: '4.8',
  ),
  Service(
    employeeName: 'Macro Loppo',
    profile_Url: 'plumber.png',
    catagoryName: 'Plumbing',
    payment: '\$80.00/Day',
    rating: '4.8',
  ),
  Service(
    employeeName: 'Macro Loppo',
    profile_Url: 'plumber.png',
    catagoryName: 'Plumbing',
    payment: '\$80.00/Day',
    rating: '4.8',
  ),
  Service(
    employeeName: 'Macro Loppo',
    profile_Url: 'plumber.png',
    catagoryName: 'Plumbing',
    payment: '\$80.00/Day',
    rating: '4.8',
  ),
];
