<?php

// contoh per ke 9
// Route::get('/', function () {
//     return 'admin page';
// })->name('dashboard');
Route::get('/', 'HomeController@index')->name('dashboard');
// Route::get('/author','AuthorController@index')->name('author.index');
// Route::get('/author/create','AuthorController@create')->name('author.create');
// Route::post('/author','AuthorController@store')->name('author.store');
// Route::get('/author/{author}/edit','AuthorController@edit')->name('author.edit');
// Route::put('/author/{author}','AuthorController@update')->name('author.update');
// Route::delete('/author/{author}','AuthorController@destroy')->name('author.destroy');
Route::get('/author/data','DataController@authors')->name('author.data');
Route::get('/book/data','DataController@books')->name('book.data');
//per 46 route untuk data
Route::get('/borrow/data','DataController@borrows')->name('borrow.data');

Route::resource('author','AuthorController');
Route::resource('book','BookController');

// per 46 route untuk tampilannya
Route::get('borrow','BorrowController@index')->name('borrow.index');
//47
Route::put('borrow/{borrowHistory}/return','BorrowController@returnBook')->name('borrow.return');

// 53
Route::get('report/top-book','ReportController@topbook')->name('report.top-book');
Route::get('report/top-user','ReportController@topuser')->name('report.top-user');
