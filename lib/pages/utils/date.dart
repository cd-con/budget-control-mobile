
String prettyDate (DateTime date){

  switch(date.month){
    case 01:
      return "Январь";
    case 02:
      return "Февраль";
    case 03:
      return "Март";
    case 04:
      return "Апрель";
    case 05:
      return "Май";
    case 06:
      return "Июнь";
    case 07:
      return "Июль";
    case 08:
      return "Август";
    case 09:
      return "Сентябрь";
    case 10:
      return "Октябрь";
    case 11:
      return "Ноябрь";
    case 12:
      return "Декабрь";
    default:
      return "???";
  }
  return "???";
}