
import 'package:order_app/models/appointment.dart';

class User {

  String phoneNumber;
  String firstName;
  String lastName;
  List<Appointment> appointments;

  User({phoneNumber, firstName, lastName}) {
    appointments = new List<Appointment>();
  }

  void addAppointment(startDate, duration) {

  }
  
}
