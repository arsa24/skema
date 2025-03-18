import 'package:flutter/material.dart';
import 'package:smk_edu_management_app/models/notification_model.dart';

class NotificationsProvider with ChangeNotifier {
  List<NotificationModel>? _notif;
  List<NotificationModel>? get notif => _notif;

  void addNotifacations(List<NotificationModel> notification) {
    _notif = notification;
    notifyListeners();
  }
}
