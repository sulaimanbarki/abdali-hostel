<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\DashboardController;
use App\Models\Staff;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function () {
    Route::get('/', [DashboardController::class, 'dashboard'])->name('dashboard');
    Route::get('dashboard', [DashboardController::class, 'dashboard'])->name('dashboard');
    // Resources Controller
    Route::resource('roles', RoleController::class);
    Route::resource('users', UserController::class);
    Route::resource('settings', SettingController::class);
    Route::resource('slides', SlideController::class);
    Route::resource('notifications', NotificationController::class);
    Route::resource('downloads', DownloadController::class);
    Route::resource('teams', TeamController::class);
    Route::resource('alerts', AlertController::class);
    Route::resource('hospitals', HospitalController::class);
    Route::resource('projects', ProjectController::class);
    Route::resource('news', NewsController::class);
    Route::resource('galleries', GallaryController::class);
    Route::resource('pages', PageController::class);
    Route::resource('categories', CategoryController::class);
    Route::get('slides/list', [SlideController::class, 'list']);
    Route::resource('links', LinkController::class);
    Route::resource('achievements', AchievementController::class);
    Route::resource('telephones', TelephoneController::class);
    Route::resource('e_registerations', EregisterationController::class);
    Route::resource('tenders', TenderController::class);
    Route::resource('roads', RoadController::class);
    Route::resource('road-info', RoadInfoController::class);
    Route::post('e_registerations/changeStatus/{id}', [EregisterationController::class, 'changeStatus']);


    Route::get('account-settings', [UserController::class, 'account_settings'])->name('user-account-settings');
    Route::post('update-setting', [UserController::class, 'update_setting'])->name('user-update-setting');


    // settings
    Route::resource('floors', FloorController::class);
    Route::get('/get-rooms/{floor_id}', [FloorController::class, 'getRooms'])->name('get.rooms');
    Route::resource('rooms', RoomController::class);
    Route::resource('expense_heads', ExpenseHeadController::class);


    // functions
    Route::resource('registrations', RegistrationController::class);
    Route::resource('fees', FeeController::class);
    Route::post('/fees/pay', [FeeController::class, 'pay_fees'])->name('fees.pay');
    Route::resource('expenses', ExpenseController::class);
    Route::resource('staff', StaffController::class);
    Route::get('staff-payment-list/{staff_id}', [StaffController::class, 'staff_payment_list'])->name('staff.payment');
    Route::post('staff-pay/{staff_id}', [StaffController::class, 'staff_pay'])->name('staff.pay');

    // reports
    Route::prefix('reports')->group(function () {
        Route::get('fee-reports', [ReportsController::class, 'fee_reports'])->name('reports.fee-reports');
        Route::get('fee-reports-bydate', [ReportsController::class, 'fee_reports_bydate'])->name('reports.fee_reports-bydate');
        Route::get('expense-reports', [ReportsController::class, 'expense_reports'])->name('reports.expense_reports');
        Route::get('expense-reports-bydate', [ReportsController::class, 'expense_reports_bydate'])->name('reports.expense_reports_bydate');
        Route::get('profit-loss-reports', [ReportsController::class, 'profit_loss_reports'])->name('reports.profit_loss_reports');
        Route::get('profit-loss-reports-bydate', [ReportsController::class, 'profit_loss_reports_bydate'])->name('reports.profit_loss_reports_bydate');
    });
});