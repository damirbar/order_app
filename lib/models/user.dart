
import 'package:order_app/models/appointment.dart';

class User {

  String phoneNumber;
  String firstName;
  String lastName;
  String profilePic;
  List<Appointment> appointments;

  User({this.phoneNumber, this.firstName, this.lastName, this.profilePic}) {
    appointments = new List<Appointment>();
  }

  void addAppointment(startDate, duration) {
    appointments.add(Appointment(duration: duration));
  }
  
}
