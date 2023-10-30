class Trip {
   final int? id;
   final String? title;
   final DateTime? date;

  Trip({  required this.id,  required this.title, required this.date});

@override
  String toString() {
    return "$id; $title; ${date?.day}.${date?.month}.${date?.year};";
  }
}


