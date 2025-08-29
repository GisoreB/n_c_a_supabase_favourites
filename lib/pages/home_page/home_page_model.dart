import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<FavouriteProductsRow> favourites = [];
  void addToFavourites(FavouriteProductsRow item) => favourites.add(item);
  void removeFromFavourites(FavouriteProductsRow item) =>
      favourites.remove(item);
  void removeAtIndexFromFavourites(int index) => favourites.removeAt(index);
  void insertAtIndexInFavourites(int index, FavouriteProductsRow item) =>
      favourites.insert(index, item);
  void updateFavouritesAtIndex(
          int index, Function(FavouriteProductsRow) updateFn) =>
      favourites[index] = updateFn(favourites[index]);

  int? count = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<FavouriteProductsRow>? userFavouriteResult;
  // Stores action output result for [Backend Call - Insert Row] action in FavouriteIconOff widget.
  FavouriteProductsRow? newFavouriteProductResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
