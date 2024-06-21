import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:slash_test2/features/home/data/models/product_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  int imagesSliderIndicator = 0;
  int currentScreen = 0;
  List<Widget> homeNavigationScreens = [];

  changeImageSliderIndicator(index) {
    imagesSliderIndicator = index;
    emit(ImageSliderIndicator());
  }

  changeScreen(int value) {
    currentScreen = value;
    emit(ChangeScreen());
  }

  toggleFav(ProductModel product) {
    product.isFav = !product.isFav;
    emit(ToggleFav());
  }

  addToCart(ProductModel product) {
    product.isSelected = !product.isSelected;
    emit(ToggleFav());
  }
}
