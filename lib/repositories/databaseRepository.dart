import 'package:meb_application/database/database.dart';
import 'package:meb_application/database/entities/todrink.dart';
import 'package:meb_application/database/entities/towalk.dart';
import 'package:flutter/material.dart';

class DatabaseRepository extends ChangeNotifier {
  //The state of the database is just the AppDatabase
  final ApPlantDatabase database;

  //Default constructor
  DatabaseRepository({required this.database});

  //This method wraps the findAllDrinks() method of the DAO
  Future<List<Drink>> findAllDrinks() async {
    final results = await database.drinkDao.findAllDrinks();
    return results;
  } //findAllDrinks

  //This method wraps the insertDrink() method of the DAO.
  //Then, it notifies the listeners that something changed.
  Future<void> insertDrink(Drink drink) async {
    await database.drinkDao.insertDrink(drink);
    notifyListeners();
  } //insertDrink

  //This method wraps the deleteDrink() method of the DAO.
  //Then, it notifies the listeners that something changed.
  Future<void> removeDrink(Drink drink) async {
    await database.drinkDao.deleteDrink(drink);
    notifyListeners();
  } //removeDrink

  //This method wraps the updateDrink() method of the DAO.
  //Then, it notifies the listeners that something changed.
  Future<void> updateDrink(Drink drink) async {
    await database.drinkDao.updateDrink(drink);
    notifyListeners();
  } //updateDrink

  //This method wraps the findAllWalks() method of the DAO
  Future<List<Walk>> findAllWalks() async {
    final results = await database.walkDao.findAllWalks();
    return results;
  } //findAllWalks

  //This method wraps the insertWalk() method of the DAO.
  //Then, it notifies the listeners that something changed.
  Future<void> insertWalk(Walk walk) async {
    await database.walkDao.insertWalk(walk);
    notifyListeners();
  } //insertWalk

  //This method wraps the deleteWalk() method of the DAO.
  //Then, it notifies the listeners that something changed.
  Future<void> removeWalk(Walk walk) async {
    await database.walkDao.deleteWalk(walk);
    notifyListeners();
  } //removeWalk

  //This method wraps the updateDrink() method of the DAO.
  //Then, it notifies the listeners that something changed.
  Future<void> updateWalk(Walk walk) async {
    await database.walkDao.updateWalk(walk);
    notifyListeners();
  } //updateWalk

} //DatabaseRepository
