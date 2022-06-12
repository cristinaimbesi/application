import 'package:meb_application/database/entities/todrink.dart';
import 'package:floor/floor.dart';

//Here, we are saying that the following class defines a dao.

@dao
abstract class DrinkDao {
  //Query #1: SELECT -> this allows to obtain all the entries of the Drink table
  @Query('SELECT * FROM Drink')
  Future<List<Drink>> findAllDrinks();

  //Query #2: INSERT -> this allows to add a Drink in the table
  @insert
  Future<void> insertDrink(Drink drink);

  //Query #3: DELETE -> this allows to delete a Drink from the table
  @delete
  Future<void> deleteDrink(Drink task);

  //Query #4: UPDATE -> this allows to update a Drink entry
  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateDrink(Drink drink);
}//DrinkDao