import 'package:meb_application/database/entities/towalk.dart';
import 'package:floor/floor.dart';

//Here, we are saying that the following class defines a dao.

@dao
abstract class WalkDao {
  //Query #1: SELECT -> this allows to obtain all the entries of the Drink table
  @Query('SELECT * FROM Walk')
  Future<List<Walk>> findAllWalks();

  //Query #2: INSERT -> this allows to add a Walk in the table
  @insert
  Future<void> insertWalk(Walk walk);

  //Query #3: DELETE -> this allows to delete a Walk from the table
  @delete
  Future<void> deleteWalk(Walk task);

  //Query #4: UPDATE -> this allows to update a Drink entry
  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateWalk(Walk walk);
}//WalkDao