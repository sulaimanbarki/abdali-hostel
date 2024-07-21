<?php

namespace App\Http\Controllers\Front;

use Illuminate\Support\Facades\Route;

// Route for storefront
// Route::get('/', [PagesController::class, 'index']);
// // Route::get('{page}/{slug}', [PagesController::class, 'function']);

// Route::get('contact-us', [PagesController::class, 'contact_us']);
// Route::get('gallery/{slug}', [PagesController::class, 'gallery']);

// //News section

// Route::group(['prefix' => 'news'], function () {
//     Route::get('/', [NewsController::class, 'index']);
//     Route::get('{slug}', [NewsController::class, 'details']);
// });


// //Tenders  section

// Route::group(['prefix' => 'tenders'], function () {
//     Route::get('/', [TenderController::class, 'index']);
//     Route::get('{slug}', [TenderController::class, 'details']);
// });

// //Project 
// Route::group(['prefix' => 'projects'], function () {
//     Route::get('/', [ProjectController::class, 'index']);
//     Route::get('{slug}', [ProjectController::class, 'details']);
// });


// //

// //News section

// Route::group(['prefix' => 'achievements'], function () {
//     Route::get('/', [AchievementController::class, 'index']);
//     Route::get('{slug}', [AchievementController::class, 'details']);
// });


// //Hospital Section 
// Route::group(['prefix' => 'hospitals'], function () {
//     Route::get('{slug}', [HospitalController::class, 'index']);
// });




// // Pages Section 
// Route::group(['prefix' => 'pages'], function () {

//     // for future use 
//     Route::redirect('/', '/');
//     Route::get('{slug}', [PagesController::class, 'dynamic']);
// });


// //Download Link
// Route::get('downloads/{slug}', [DownloadController::class, 'index']);


// // Pages Teams 
// Route::group(['prefix' => 'teams'], function () {
//     // for future use 
//     Route::get('/', [TeamController::class, 'index']);
//     // Route::get('{slug}', [PagesController::class, 'dynamic']);
// });



// Route::get('aboutus', [PagesController::class, 'about_us']);


// // Route of Projects Pages


// Route::get('organogram', [PagesController::class, 'organogram']);
// Route::get('phone', [PagesController::class, 'phone']);
// Route::get('officer-profile', [PagesController::class, 'officer_profile']);
// //Routes for E-Tenders

// Route::get('nit', [PagesController::class, 'notice_inviting_tender']);
// Route::get('contractor-login', [PagesController::class, 'contractor_login']);
// Route::get('official-login', [PagesController::class, 'official_login']);
// Route::get('approved-contractors-list', [PagesController::class, 'approved_contractors_list']);
// Route::get('debared-contractors-list', [PagesController::class, 'debared_contractors_list']);
// Route::get('applyonline', [PagesController::class, 'applyOnline']);

// //projects

// Route::get('c&wnorthsecter', [PagesController::class, 'c_wnorthsecter']);
// Route::get('c&wsouthsector', [PagesController::class, 'c_wsouthsector']);
// Route::get('salient-features-ADP-2019-20', [PagesController::class, 'salient_features']);
// Route::get('psdp-projects', [PagesController::class, 'psdp_projects']);

// Route::get('targets', [PagesController::class, 'targets']);
// Route::get('development-expenditures', [PagesController::class, 'development_expenditures']);
// Route::get('tenderList', [PagesController::class, 'tenderList']);
// Route::get('adp-north', [PagesController::class, 'adpnorth']);

// Route::get('roadmap', [PagesController::class, 'roadMap']);
// Route::get('office-circulars', [PagesController::class, 'office_circulars']);
// Route::get('notification', [PagesController::class, 'notification']);
// Route::get('videos', [PagesController::class, 'videos']);
// Route::POST('eregist_store', [PagesController::class, 'e_regis']);


// // Pages Roads 
// Route::group(['prefix' => 'roads'], function () {
//     // for future use 
//     Route::get('/', [RoadController::class, 'index']);
//     // Route::get('{slug}', [PagesController::class, 'dynamic']);
// });
