import 'package:ecommerce_app/data/models/wishlist_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';

part 'home_cubit.freezed.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState.initial());

  void addProducts() {
    for (int i = 0; i <= 15; i++) {
      state.productList.add(
        Product(
          id: i+1,
          imageUrl:
              'https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1662703724/Croma%20Assets/Communication/Mobiles/Images/261934_qgssvy.png/mxw_640,f_auto',
          itemCompany: 'Apple',
          itemName: 'Apple iphone 14 Pro 128GB Deep blue',
          price: '₹10,000',
          originalPrice: '₹8,888',
          favourite: false,
        ),
      );
    }
  }

  void onWishlistTap( int id) {
    for(Product product in state.productList) {
      if(product.id == id) {
        product.favourite = !product.favourite;
      }
    }
    emit(state.copyWith(productList: state.productList, loading: !state.loading));
  }

  void onWishlistClearAllTap() {
    for(Product product in state.productList) {
      product.favourite = false;
    }
    emit(state.copyWith(loading: !state.loading));
  }

  void onLocationAccess(String location){
    emit(state.copyWith(location: location));
  }

  // For accesing the position
  late Position currentPosition;

  void setPosition(Position p){
    currentPosition=p;
  }

  Position getPosition(){
    return currentPosition;
  }
}
