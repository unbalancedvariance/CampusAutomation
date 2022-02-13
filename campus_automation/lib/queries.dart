class query {
  late int year;
  late int month;
  late int day;
  late int hour;
  late int minute;
  late int status;
  query(this.year,this.month,this.day,this.hour,this.minute);
  query.fromJson(Map<String,dynamic> json){
    year = json['year'];
    month = json['month'];
    day = json['day'];
    hour = json['hour'];
    minute = json['minute'];
    status = json['status'];
  }
  Map toJson() {
    return {'year': year, 'month': month, 'day': day, 'hour': hour, 'minute': minute};
  }
}


List queries = [
  {
    "img": "assets/alucard.jpg",
    "comment": "Nulla porttitor accumsan tincidunt. Vestibulum ante "
        "ipsum primis in faucibus orci luctus et ultrices posuere "
        "cubilia Curae",
    "name": "Jane Doe"
  },
  {
    "img": "assets/alucard.jpg",
    "comment": "Nulla porttitor accumsan tincidunt. Vestibulum ante "
        "ipsum primis in faucibus orci luctus et ultrices posuere "
        "cubilia Curae",
    "name": "Jane Joe"
  },
  {
    "img": "assets/alucard.jpg",
    "comment": "Nulla porttitor accumsan tincidunt. Vestibulum ante "
        "ipsum primis in faucibus orci luctus et ultrices posuere "
        "cubilia Curae",
    "name": "Mary Jane"
  },
  {
    "img": "assets/alucard.jpg",
    "comment": "Nulla porttitor accumsan tincidunt. Vestibulum ante "
        "ipsum primis in faucibus orci luctus et ultrices posuere "
        "cubilia Curae",
    "name": "Jane Jones"
  }
];