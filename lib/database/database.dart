class DataBase {
  final String nome;
  final String email;
  final String img;

  const DataBase({
    required this.email,
    required this.nome,
    required this.img,
  });

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'email': email,
      'img': img,
    };
  }

  @override
  String toString() {
    return 'Dog{nome: $nome, email: $email, img: $img}';
  }

  /*void criarSQLite() async {
    WidgetsFlutterBinding.ensureInitialized();
    final database = openDatabase(
      join(await getDatabasesPath(), 'database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE dados(nome TEXT, email TEXT PRIMARY KEY, img BLOB)',
        );
      },
      version: 1,
    );
  }

  Future<void> inserirDados(DataBase dados) async {
    final db = await database;
    await db.insert(
      'dados',
      dados.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }*/
}
