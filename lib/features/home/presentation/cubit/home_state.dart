part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ImageSliderIndicator extends HomeState {}

final class ChangeScreen extends HomeState {}

final class ToggleFav extends HomeState {}

final class AddToCart extends HomeState {}
