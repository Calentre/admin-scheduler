import 'package:calentre/config/constants/time_list.dart';
import 'package:calentre/config/enums/weekdays.dart';
import 'package:calentre/features/events/data/models/calentre_event.dart';
import 'package:calentre/features/events/presentation/bloc/event/event_event.dart';
import 'package:calentre/features/events/presentation/bloc/event/event_state.dart';

///Adds a new [TimeSlot] and initializes the errorList with a [false]
///value within the [DayScheduleValidationState].
///

List addNewTimeFieldHelper(
    CalentreEventState calentreEventState,
    DayScheduleValidationState dayScheduleValidationState,
    AddNewTimeFieldEvent event) {
  //Create a new list from the current day states
  List<TimeSlot> mondaySchedule = [...calentreEventState.days.monday!];
  List<TimeSlot> tuesdaySchedule = [...calentreEventState.days.tuesday!];
  List<TimeSlot> wednesdaySchedule = [...calentreEventState.days.wednesday!];
  List<TimeSlot> thursdaySchedule = [...calentreEventState.days.thursday!];
  List<TimeSlot> fridaySchedule = [...calentreEventState.days.friday!];
  List<TimeSlot> saturdaySchedule = [...calentreEventState.days.saturday!];
  List<TimeSlot> sundaySchedule = [...calentreEventState.days.sunday!];

  //Create a new object with the updated days schedule
  final updatedDays = Days(
      monday: mondaySchedule,
      tuesday: tuesdaySchedule,
      wednesday: wednesdaySchedule,
      thursday: thursdaySchedule,
      friday: fridaySchedule,
      saturday: saturdaySchedule,
      sunday: sundaySchedule);

  switch (event.day) {
    case WeekDays.monday:
      mondaySchedule.add(TimeSlot(
          start: TimeList().timeList.first, end: TimeList().timeList[1]));
      calentreEventState =
          calentreEventState.clone(calentreEventState, days: updatedDays);

      List<Map<WeekDays, List<bool>>> errorList = [
        ...dayScheduleValidationState.errorList
      ];
      errorList[0][WeekDays.monday]!.add(false);
      dayScheduleValidationState = dayScheduleValidationState
          .clone(dayScheduleValidationState, errorList: errorList);
      return [calentreEventState, dayScheduleValidationState];

    case WeekDays.tuesday:
      tuesdaySchedule.add(TimeSlot(
          start: TimeList().timeList.first, end: TimeList().timeList[1]));
      calentreEventState =
          calentreEventState.clone(calentreEventState, days: updatedDays);

      List<Map<WeekDays, List<bool>>> errorList = [
        ...dayScheduleValidationState.errorList
      ];
      errorList[1][WeekDays.tuesday]!.add(false);
      dayScheduleValidationState = dayScheduleValidationState
          .clone(dayScheduleValidationState, errorList: errorList);
      return [calentreEventState, dayScheduleValidationState];

    case WeekDays.wednesday:
      wednesdaySchedule.add(TimeSlot(
          start: TimeList().timeList.first, end: TimeList().timeList[1]));
      calentreEventState =
          calentreEventState.clone(calentreEventState, days: updatedDays);

      List<Map<WeekDays, List<bool>>> errorList = [
        ...dayScheduleValidationState.errorList
      ];
      errorList[2][WeekDays.wednesday]!.add(false);
      dayScheduleValidationState = dayScheduleValidationState
          .clone(dayScheduleValidationState, errorList: errorList);
      return [calentreEventState, dayScheduleValidationState];

    case WeekDays.thursday:
      thursdaySchedule.add(TimeSlot(
          start: TimeList().timeList.first, end: TimeList().timeList[1]));
      calentreEventState =
          calentreEventState.clone(calentreEventState, days: updatedDays);

      List<Map<WeekDays, List<bool>>> errorList = [
        ...dayScheduleValidationState.errorList
      ];
      errorList[3][WeekDays.thursday]!.add(false);
      dayScheduleValidationState = dayScheduleValidationState
          .clone(dayScheduleValidationState, errorList: errorList);
      return [calentreEventState, dayScheduleValidationState];

    case WeekDays.friday:
      fridaySchedule.add(TimeSlot(
          start: TimeList().timeList.first, end: TimeList().timeList[1]));
      calentreEventState =
          calentreEventState.clone(calentreEventState, days: updatedDays);

      List<Map<WeekDays, List<bool>>> errorList = [
        ...dayScheduleValidationState.errorList
      ];
      errorList[4][WeekDays.friday]!.add(false);
      dayScheduleValidationState = dayScheduleValidationState
          .clone(dayScheduleValidationState, errorList: errorList);
      return [calentreEventState, dayScheduleValidationState];

    case WeekDays.saturday:
      saturdaySchedule.add(TimeSlot(
          start: TimeList().timeList.first, end: TimeList().timeList[1]));
      calentreEventState =
          calentreEventState.clone(calentreEventState, days: updatedDays);

      List<Map<WeekDays, List<bool>>> errorList = [
        ...dayScheduleValidationState.errorList
      ];
      errorList[5][WeekDays.saturday]!.add(false);
      dayScheduleValidationState = dayScheduleValidationState
          .clone(dayScheduleValidationState, errorList: errorList);
      return [calentreEventState, dayScheduleValidationState];

    case WeekDays.sunday:
      sundaySchedule.add(TimeSlot(
          start: TimeList().timeList.first, end: TimeList().timeList[1]));
      calentreEventState =
          calentreEventState.clone(calentreEventState, days: updatedDays);

      List<Map<WeekDays, List<bool>>> errorList = [
        ...dayScheduleValidationState.errorList
      ];
      errorList[6][WeekDays.sunday]!.add(false);
      dayScheduleValidationState = dayScheduleValidationState
          .clone(dayScheduleValidationState, errorList: errorList);
      return [calentreEventState, dayScheduleValidationState];

    default:
      return [calentreEventState, dayScheduleValidationState];
  }
}
