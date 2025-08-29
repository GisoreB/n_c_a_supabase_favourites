import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool isfavouriteInList(
  int productId,
  List<FavouriteProductsRow> favourites,
) {
  for (var favourite in favourites) {
    if (favourite.productId == productId) {
      return true;
    }
  }

  return false;
}
