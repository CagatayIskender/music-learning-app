class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "\"Müziği eşit zaman aralıklarına bölen düzenli ve tekrar eden birimlerdir.\" Tanımı aşağıdakilerden hangisine aittir?",
    "options": ['Kulak', 'Vuruş', 'Gam', 'Solfej'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Portedeki notalar daha yukarı yerleştirildikçe sesler nasıl değişir?",
    "options": ['Kısıklaşır', 'Aynı kalır', 'Kalınlaşır', 'Tizleşir'],
    "answer_index": 3,

  },
  {
    "id": 3,
    "question": "\"Müzikal sesleri simgeleyen işaretlerdir.\" Tanımı aşağıdakilerden hangisine aittir?",
    "options": ['Ritim', 'Nota', 'Enstrüman', 'Vuruş'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "\"Müziğin yazıya dökülmesi için kullanılan ilk araçtır.\" Tanımı aşağıdakilerden hangisine aittir?",
    "options": ['Porte', 'Nota', 'Vuruş', 'Sol anahtarı'],
    "answer_index": 0,
  },
];
