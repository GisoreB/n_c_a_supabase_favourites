import '../database.dart';

class FavouriteProductsTable extends SupabaseTable<FavouriteProductsRow> {
  @override
  String get tableName => 'favourite_products';

  @override
  FavouriteProductsRow createRow(Map<String, dynamic> data) =>
      FavouriteProductsRow(data);
}

class FavouriteProductsRow extends SupabaseDataRow {
  FavouriteProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavouriteProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int get productId => getField<int>('product_id')!;
  set productId(int value) => setField<int>('product_id', value);
}
