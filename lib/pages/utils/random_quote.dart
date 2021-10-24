import 'dart:math';

enum quoteType{
  categoryCreate,
  randomWord
}
var categoryCreateQuotes = ["Новые категории - новые цели?", "Опять?", "хуй пизда пирожок"];
var randomWords = ["Еда", "Подписки", "Развлечения"];
String randomQuote(quoteType qt) {
  final _random = Random();
  String quote = "Lorem ipsum dolor"; //Some kind of null-protect :)
  switch (qt) {
    case quoteType.categoryCreate:
      quote = categoryCreateQuotes[_random.nextInt(
          categoryCreateQuotes.length)];
      break;
    case quoteType.randomWord:
      quote = randomWords[_random.nextInt(
          randomWords.length)];
      break;
  }
  return quote;
}