// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorApPlantDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$ApPlantDatabaseBuilder databaseBuilder(String name) =>
      _$ApPlantDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$ApPlantDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$ApPlantDatabaseBuilder(null);
}

class _$ApPlantDatabaseBuilder {
  _$ApPlantDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$ApPlantDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$ApPlantDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<ApPlantDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$ApPlantDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$ApPlantDatabase extends ApPlantDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  DrinkDao? _drinkDaoInstance;
  WalkDao? _walkDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE IF NOT EXISTS `Drink & Walk` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `liters & meters` REAL NOT NULL, `dateTime` INTEGER NOT NULL)',
        );

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  DrinkDao get drinkDao {
    return _drinkDaoInstance ??= _$DrinkDao(database, changeListener);
  }

  @override
  WalkDao get walkDao {
    return _walkDaoInstance ??= _$WalkDao(database, changeListener);
  }
}

class _$DrinkDao extends DrinkDao {
  _$DrinkDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _drinkInsertionAdapter = InsertionAdapter(
            database,
            'Drink',
            (Drink item) => <String, Object?>{
                  'id': item.id,
                  'liters': item.liters,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                }),
        _drinkUpdateAdapter = UpdateAdapter(
            database,
            'Drink',
            ['id'],
            (Drink item) => <String, Object?>{
                  'id': item.id,
                  'liters': item.liters,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                }),
        _drinkDeletionAdapter = DeletionAdapter(
            database,
            'Drink',
            ['id'],
            (Drink item) => <String, Object?>{
                  'id': item.id,
                  'liters': item.liters,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Drink> _drinkInsertionAdapter;

  final UpdateAdapter<Drink> _drinkUpdateAdapter;

  final DeletionAdapter<Drink> _drinkDeletionAdapter;

  @override
  Future<List<Drink>> findAllDrinks() async {
    return _queryAdapter.queryList('SELECT * FROM Drink',
        mapper: (Map<String, Object?> row) => Drink(
            row['id'] as int?,
            row['liters'] as double,
            _dateTimeConverter.decode(row['dateTime'] as int)));
  }

  @override
  Future<void> insertDrink(Drink drink) async {
    await _drinkInsertionAdapter.insert(drink, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateDrink(Drink drink) async {
    await _drinkUpdateAdapter.update(drink, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteDrink(Drink task) async {
    await _drinkDeletionAdapter.delete(task);
  }
}

class _$WalkDao extends WalkDao {
  _$WalkDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _walkInsertionAdapter = InsertionAdapter(
            database,
            'Walk',
            (Walk item) => <String, Object?>{
                  'id': item.id,
                  'meters': item.meters,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                }),
        _walkUpdateAdapter = UpdateAdapter(
            database,
            'Walk',
            ['id'],
            (Walk item) => <String, Object?>{
                  'id': item.id,
                  'meters': item.meters,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                }),
        _walkDeletionAdapter = DeletionAdapter(
            database,
            'Walk',
            ['id'],
            (Walk item) => <String, Object?>{
                  'id': item.id,
                  'meters': item.meters,
                  'dateTime': _dateTimeConverter.encode(item.dateTime)
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<Walk> _walkInsertionAdapter;

  final UpdateAdapter<Walk> _walkUpdateAdapter;

  final DeletionAdapter<Walk> _walkDeletionAdapter;

  @override
  Future<List<Walk>> findAllWalks() async {
    return _queryAdapter.queryList('SELECT * FROM Walk',
        mapper: (Map<String, Object?> row) => Walk(
            row['id'] as int?,
            row['meters'] as double,
            _dateTimeConverter.decode(row['dateTime'] as int)));
  }

  @override
  Future<void> insertWalk(Walk walk) async {
    await _walkInsertionAdapter.insert(walk, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateWalk(Walk walk) async {
    await _walkUpdateAdapter.update(walk, OnConflictStrategy.replace);
  }

  @override
  Future<void> deleteWalk(Walk task) async {
    await _walkDeletionAdapter.delete(task);
  }
}

// ignore_for_file: unused_element
final _dateTimeConverter = DateTimeConverter();
