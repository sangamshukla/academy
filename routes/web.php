<?php

use App\Http\Controllers\AddStudentController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ApiController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\BatchController;
use App\Http\Controllers\FooterContentController;
use App\Http\Controllers\FullCalenderController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PackagesDetailsController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\TeacherByBatchController;
use App\Http\Controllers\LiveSessionController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\TeacherDashboardController;
use App\Http\Controllers\TeacherCalanderController;
use App\Http\Controllers\TeacherProfileController;
use App\Http\Controllers\ZoomController;
use App\Models\Batch;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeWorkController;
use App\Http\Controllers\HomeWorkStudentController;
use App\Http\Controllers\ManagementController;
use App\Http\Controllers\OfflineController;
use App\Http\Controllers\OperationController;
use App\Http\Controllers\StudentProfileController;
use App\Models\User;
use Symfony\Component\Console\Input\Input;
use Illuminate\Http\Request;
use App\Models\Transaction;
use App\Models\Order;
use App\Models\OrderItems;
use App\Models\OrderPayment;
use App\Models\OrderSessionMap;
use App\Models\OrderSessions;
use App\Http\Controllers\StudyMaterialController;
use App\Http\Controllers\ScoreSheetController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('about-us', [HomeController::class, 'aboutUs'])->name('about-us');
Route::get('/', function () {
    $relatedBatches = Batch::whereHas('batchSession', function ($query) {
        $query->whereDate('start_date_time', '>=', Carbon::today());
    })->latest()->take(8)->get();
    return view('welcome', compact('relatedBatches'));
})->name('/');

Auth::routes();

Route::get('/admin-login', 'App\Http\Controllers\Auth\LoginController@adminLogin');
Route::get('/login', 'App\Http\Controllers\Auth\LoginController@showLoginForm');
Route::post('/login', 'App\Http\Controllers\Auth\LoginController@login')->name('login');
Route::get('/teacher-login', 'App\Http\Controllers\Auth\LoginController@teacherLogin');
Route::get('/operation-login', 'App\Http\Controllers\Auth\LoginController@operationLogin');

Route::get('/student-register', 'App\Http\Controllers\Auth\LoginController@studentRegister')->name('student-register');
Route::post('/student-register', 'App\Http\Controllers\Auth\RegisterController@register')->name('student-register');
Route::get('/student-login', 'App\Http\Controllers\Auth\LoginController@studentLogin')->name('student-login');
Route::post('/student-login', 'App\Http\Controllers\Auth\LoginController@login')->name('student-login');
Route::get('/student-details/{id}', [BatchController::class, 'studentDetails'])->name('student-details');

Route::group(['middleware' => 'auth'], function () {
    Route::get('/home', [HomeController::class, 'index']);

    Route::resource('user', 'App\Http\Controllers\UserController', ['except' => ['show']]);
    Route::get('profile', ['as' => 'profile.edit', 'uses' => 'App\Http\Controllers\ProfileController@edit']);
    Route::put('profile', ['as' => 'profile.update', 'uses' => 'App\Http\Controllers\ProfileController@update']);
    Route::put('profile/password', ['as' => 'profile.password', 'uses' => 'App\Http\Controllers\ProfileController@password']);
    Route::post('profile/save', [ProfileController::class, 'store'])->name('image-upload');

    Route::get('/admin-show', [HomeController::class, 'adminshow']);


    Route::get('/teacher-new-dashboard', [HomeController::class, 'teacherDashboard']);

    Route::get('/student-dashboard', [HomeController::class, 'studentDashboard'])->name('student-dashboard');
    Route::get('/session-list', [HomeController::class, 'sessionList']);
    Route::get('zoom/{id}', [HomeController::class, 'zoom']);

    // for sendmail on homepage
    // Route::get('/contect-mail', [HomeController::class, 'contactMail'])->name('contect-mail');
    // Route::post('/contact-mail', [HomeController::class, 'contactMailSave'])->name('contact-mail');

    // Teacher Controller
    Route::get('add-teacher', [TeacherController::class, 'create'])->name('add-teacher');
    Route::post('add-teacher', [TeacherController::class, 'store'])->name('add-teacher');
    Route::get('manage-teacher', [TeacherController::class, 'index'])->name('manage-teacher');
    Route::get('edit-teacher/{id}', [TeacherController::class, 'edit'])->name('edit-teacher');
    Route::post('edit-teacher/{id}', [TeacherController::class, 'update'])->name('edit-teacher');
    Route::get('show-teacher/{id}', [TeacherController::class, 'show'])->name('show-teacher');
    Route::get('destroy-teacher/{id}', [TeacherController::class, 'destroy'])->name('destroy-teacher');
    Route::get('add-student', [AddStudentController::class, 'createAddStudent'])->name('add-student');
    Route::post('add-student', [AddStudentController::class, 'storeAddStudent'])->name('add-student');

    Route::get('add-product', [TeacherController::class, 'store'])->name('add-product');
    Route::post('add-product', [TeacherController::class, 'store'])->name('add-product');
});

Route::get('add-to-cart/{batchId}', [PaymentController::class, 'payment'])->name('cart.add');
Route::get('remove-from-cart/{removeFromCart}', [PaymentController::class, 'removeFromCart'])->name('cart.remove');
Route::get('terms-of-use', [FooterContentController::class, 'termsofuse'])->name('terms.of.use');
Route::get('privacy-policy', [FooterContentController::class, 'privacyPolicy'])->name('privacy.policy');

Route::post('/pay', [PaymentController::class, 'pay'])->name('payment.makePayment');
//needs to be removed. testing purpuse only
// Route::get('/pay', [PaymentController::class, 'pay'])->name('payment.makePayment');

Route::post('/login-api', [ApiController::class, 'login']);
Route::post('/signup', [RegisterController::class, 'create']);
// packages details
Route::get('/packages-details', [PackagesDetailsController::class, 'packagesDetails'])->name('packages.details');
Route::get('/11+mock', [PackagesDetailsController::class, 'mock'])->name('mock');
Route::get('/study-material', [StudyMaterialController::class, 'studyMaterial'])->name('study-material');
//teacher dashboard
Route::get('/teacher-dashboard', [TeacherDashboardController::class, 'index'])->name('teacher-dashboard')->middleware('auth');
Route::get('/teacher-profile', [TeacherProfileController::class, 'index'])->name('teacher-profile')->middleware('auth');
Route::get('teacher-experience-edit', [TeacherProfileController::class, 'edit'])->middleware('auth');
Route::post('teacher-image', [TeacherProfileController::class, 'storeImage'])->name('teacher-image')->middleware('auth');
Route::post('teacher-info', [TeacherProfileController::class, 'storeInformation'])->name('teacher-info')->middleware('auth');
Route::post('teacher-idproof', [TeacherProfileController::class, 'storeIdproof'])->name('teacher-idproof')->middleware('auth');
Route::post('teacher-experience', [TeacherProfileController::class, 'storeExperience'])->name('teacher-experience')->middleware('auth');
Route::post('get-subject', [TeacherProfileController::class, 'getSubject'])->name('get-subject')->middleware('auth');
Route::post('teacher-expertise', [TeacherProfileController::class, 'storeExpertise'])->name('teacher-expertise')->middleware('auth');
Route::post('teacher-expertise-data', [TeacherProfileController::class, 'storeExpertiseData'])->name('teacher-expertise-data')->middleware('auth');

/*Student Homework Module*/
Route::get('home-work/{id}', [HomeWorkStudentController::class, 'index'])->name('home-work')->middleware('auth');
Route::get('submit-home-work/{id}', [HomeWorkStudentController::class, 'submitHomework'])->name('submit-home-work')->middleware('auth');
Route::post('upload-homework', [HomeWorkStudentController::class, 'uploadHomework'])->name('upload-homework')->middleware('auth');
Route::post('upload-homework-text', [HomeWorkStudentController::class, 'uploadText'])->name('upload-homework-text')->middleware('auth');
/*End home work module*/


// for zoom
// Route::get('/', [ZoomController::class, 'zoom'])->name('zoom');
Route::get('/teacher-new-dashboard', [TeacherDashboardController::class, 'index'])->name('teacher-new-dashboard')->middleware('auth');


//live session
Route::get('/live-session-detail', [LiveSessionController::class, 'livesessiondetail'])->name('live-session-detail');
Route::get('/live-session', [LiveSessionController::class, 'livesession'])->name('live-session');

// Teacher Calander routes.
Route::get('teacher-calander/{id}', [TeacherCalanderController::class, 'index'])->name('teacher-calander');
Route::post('teacher-calander/{id}', [TeacherCalanderController::class, 'sessions']);
Route::get('fullcalender', [FullCalenderController::class, 'index'])->name('fullcalender');
Route::post('fullcalenderAjax', [FullCalenderController::class, 'ajax']);


Route::get('start-session/{id}', [HomeWorkController::class, 'startSession']);
Route::post('start-session/{id}', [HomeWorkController::class, 'saveStartSession']);
Route::get('view-homework-details/{id}', [HomeWorkController::class, 'viewhomeworkdetails']);

Route::post("/assign-points", [HomeWorkController::class, 'assignPoints']);
Route::post('/upload-pdf/{id}', [HomeWorkController::class, 'uploadPDF']);
Route::get('/marks-sheet', [HomeWorkController::class, 'marksSheet'])->name('marks-sheet');
//test route
Route::get('buy-now', [BatchController::class, 'buyNow'])->name('buy.now');

Route::post('/assign-homework', [HomeWorkController::class, 'assignHomeWork'])->name('assign-homework');


Route::group(['middleware' => ['auth','teacher']], function () {
    Route::get('new-teacher', [TeacherDashboardController::class, 'newindex']);


    Route::get('student', [BatchController::class, 'student'])->name('student');
    Route::get('available-courses', [BatchController::class, 'availableCourses'])->name('available-courses');
});

    Route::post('buy-now', [BatchController::class, 'buyNow'])->name('buy.now');
Route::group(['middleware' => ['auth', 'student']], function () {
});
    Route::group(['middleware' => ['auth', 'operation']], function () {
        Route::get('get-operation', [OperationController::class, 'index']);
        Route::get('operation-dashboard', [OperationController::class, 'oprationDashboard']);
        Route::post('batch-list', [OperationController::class, 'batchList'])->name('batch-list');
        Route::get('teacher-management', [OperationController::class, 'teacherManagement'])->name('teacher.management');
        Route::get('purchase-session/{id}', [OperationController::class, 'purchaseSession'])->name('purchase-session');
        Route::get('confirm-payment/{id}', [OperationController::class, 'confirm_payment'])->name('confirm-payment');
        Route::post('sell-session', [OperationController::class, 'sell-session'])->name('sell-session');
        Route::get('operation-add-to-cart/{batchId}', [PaymentController::class, 'operationPayment'])->name('operation.cart');
        Route::post('student-list', [OperationController::class, 'studentList'])->name('student-list');
        Route::get('student-paid-details/{id}', [OperationController::class, 'studentPaidDetails'])->name('student.paiddetails');
        Route::post('get-session-list', [OperationController::class, 'getSeesionList'])->name('get-session-list');
        Route::post('get-student-list', [OperationController::class, 'getStudentList'])->name('get-student-list');
        Route::get('enrolled-student/{id}', [OperationController::class, 'enrolledStudent'])->name('enrolled-student');
    });
    //
      Route::group(['midddleware'=>['auth','teacheroperationadmin']], function () {

          // new add class
          Route::get('create-classes', [BatchController::class, 'create'])->name('class.create');
          Route::post('create-classes', [BatchController::class, 'store'])->name('class.store');
          Route::get('manage-classes', [BatchController::class, 'manageClass'])->name('manage-classnew');

          Route::get('edit-classes/{id}', [BatchController::class, 'edit'])->name('edit-class');
          Route::post('edit-classes/{id}', [BatchController::class, 'update'])->name('update-class');
          Route::get('show-classes/{id}', [BatchController::class, 'show'])->name('show-class');
          Route::get('destroy-classes/{id}', [BatchController::class, 'destroy'])->name('destroy-class');
          Route::get('admin-dashboard', [AdminController::class, 'adminDashboard'])->name('admin-dashboard');
      });

    Route::get('/payment-success/{id}', function ($id) {
        Transaction::find($id)->update(['payment_status'=> 'yes']);
        session()->put('cart', []);
        return view('payment.success');
    });

    Route::get('/payment-failed/{id}', function ($id) {
        $tx = Transaction::find($id);
        OrderPayment::find($tx->order_id)->delete();
        OrderItems::where('order_payment_id', $tx->order_id)->delete();
        OrderSessionMap::where('order_id', $tx->order_id)->delete();
        $tx->delete();
        // session()->put('cart', []);
        return view('payment.failed');
    });
  Route::get('/search', function (Request $request) {
      $users= User::search($request->search)->where('role', 'teacher')->get();
      return response()->json($users);
  })->name('search');

Route::get('have-purchased', [PaymentController::class, 'checkPurchased'])->name('have-purchased');
Route::post('pay-due-amount', [HomeWorkController::class, 'payDueAmount'])->name('pay-due-amount');
Route::get('is-homework-assigned', [HomeWorkController::class, 'check']);

// for sendmail on homepage
Route::post('/contact-mail', [HomeController::class, 'contactMailSave'])->name('contact-mail');
Route::get('is-seat-full', [BatchController::class, 'check_if_seat_is_full']);
Route::post('upload-edit-homework', [HomeWorkController::class, 'upload_edit_homework'])->name('upload-edit-homework');
Route::get('delete-homework/{homework_id}/{student_id}', [HomeWorkController::class, 'delete_homework'])->name('delete-homework');

Route::get('/find/teacher/{teacherId}/{datetime}/{duration?}', [ApiController::class, 'getAvailableTeacher']);
Route::get('get_teacher_who_has_session', [OperationController::class, 'get_teacher_who_has_session']);
Route::get('get-score-sheet', [OperationController::class, 'scoreSheet']);
Route::get('sessions-for-tomorrow', [HomeController::class, 'sessionForTomorrow']);
Route::post('upload-answer-pdf', [HomeWorkController::class, 'upload_pdf'])->name('upload-answer-pdf');
Route::get('get-id', [HomeWorkStudentController::class, 'get_assigned_homework_answer_map_id']);

// for offline scoresheet
Route::get('full-marks', [OfflineController::class, 'fullMarks'])->name('full-marks');
// Route::post('show-class', [OfflineController::class, 'ShowClass'])->name('show-class');
Route::post('full-marks', [OfflineController::class, 'fullMarksSave'])->name('full-marks');
Route::get('pdf/{studentId}/{weekId}', [OfflineController::class, 'pdf'])->name('pdf');



Route::get('student-enrollment/{weekId}', [OfflineController::class, 'studentEnrollment'])->name('student-enrollment');
Route::post('student-enrollment', [OfflineController::class, 'studentEnrollmentSave'])->name('student-enrollment');
Route::get('student-enrollment/{weekId}', [OfflineController::class, 'studentEnrollMent'])->name('student-enrollment_load');
Route::get('student-enrollment-edit/{id}', [OfflineController::class, 'studentEnrollmentEdit'])->name('student-enrollment-edit');
// Route::post('student-enrollment-edit/{id}', [OfflineController::class, 'studentEnrollmentUpdate'])->name('student-enrollment-edit');


Route::get('offline-scoresheet/{id}', [OfflineController::class, 'offline_scoresheet'])->name('offline-scoresheet');
Route::get('offline-scoresheet-pdf/{studentId}/{weekId}', [OfflineController::class, 'new_offline_scoresheet_pdf'])->name('offline-scoresheet-pdf');
Route::get('offline-scoresheet-edit/{studentId}/{weekId}', [OfflineController::class, 'new_offline_scoresheet_edit'])->name('offline-scoresheet-edit');
Route::put('offline-scoresheet-udpate', [OfflineController::class, 'new_offline_scoresheet_update'])->name('offline-scoresheet-udpate');
Route::get('offlinescoresheet-pdf', [OfflineController::class, 'new_offlinescoresheet_pdf'])->name('offlinescoresheet-pdf');
Route::post('submit-scores', [OfflineController::class, 'submit_score']);

// Route::get('offline-scoresheet', [AdminController::class, 'offline_scoresheet'])->name('offline-scoresheet');
// Route::get('offline-scoresheet-pdf', [AdminController::class, 'offline_scoresheet_pdf'])->name('offline-scoresheet-pdf');
Route::post('my-scoresheet', [OfflineController::class, 'myScoresheet'])->name('my-scoresheet');
Route::get('select-week', [OfflineController::class, 'selectWeek'])->name('select-week');
Route::get('admin-scoresheet', [OfflineController::class, 'admin_scoresheet'])->name('admin-scoresheet');
Route::get('any-data', [OfflineController::class, 'anyData'])->name('any-data');
Route::get('get-week', [OfflineController::class, 'get_weeks'])->name('get-week');
Route::get('get-week-marks', [OfflineController::class, 'get_week_marks'])->name('get-week-marks');
Route::get('get-student/{weekId}', [OfflineController::class, 'get_student'])->name('get-student');
Route::get('get-students-marks/{id}', [OfflineController::class, 'get_students_marks'])->name('get-students-marks');

Route::get('manage-year', [OfflineController::class, 'manageYearIndex'])->name('manage-year');
Route::get('add-manage-year', [OfflineController::class, 'manageYear'])->name('add-manage-year');
Route::post('add-manage-year', [OfflineController::class, 'manageYearSave'])->name('add-manage-year');
Route::get('manage-year-edit/{id}', [OfflineController::class, 'manageYearEdit'])->name('manage-year-edit');
Route::post('manage-year-edit/{id}', [OfflineController::class, 'manageYearUpdate'])->name('manage-year-edit');
Route::get('manage-year-destroy/{id}', [OfflineController::class, 'manageYearDestroy'])->name('manage-year-destroy');


Route::get('manage-subject', [OfflineController::class, 'manageSubjectIndex'])->name('manage-subject');
Route::get('add-manage-subject', [OfflineController::class, 'manageSubject'])->name('add-manage-subject');
Route::post('add-manage-subject', [OfflineController::class, 'manageSubjectSave'])->name('add-manage-subject');
Route::get('manage-subject-edit/{id}', [OfflineController::class, 'manageSubjectEdit'])->name('manage-subject-edit');
Route::post('manage-subject-edit/{id}', [OfflineController::class, 'manageSubjectUpdate'])->name('manage-subject-edit');
Route::get('manage-subject-destroy/{id}', [OfflineController::class, 'manageSubjectDestroy'])->name('manage-subject-destroy');

Route::get('manage-topic', [OfflineController::class, 'manageTopic'])->name('manage-topic');
Route::get('manage-topic-save/{id}', [OfflineController::class, 'manageTopicSave'])->name('manage-topic-save');
Route::post('manage-topic-save/{id}', [OfflineController::class, 'manageTopicSave'])->name('manage-topic-save');




Route::get('admin-score', [OfflineController::class, 'admin_score'])->name('admin-score');
Route::get('admin-score-data/{week_id}', [OfflineController::class, 'admin_score_data'])->name('admin-score-data');
Route::post('admin-score-data-week', [OfflineController::class, 'admin_score_data_save'])->name('admin-score-data-week');
Route::get('get-graph-math/{student_id}', [OfflineController::class, 'get_graph_math'])->name('get-graph');
Route::get('get-graph-english/{student_id}', [OfflineController::class, 'get_graph_english'])->name('get-graph-english');
Route::get('get-graph-physics/{student_id}', [OfflineController::class, 'get_graph_physics'])->name('get-graph-physics');
Route::get('get-graph-4/{student_id}', [OfflineController::class, 'get_graph4'])->name('get-graph-4');
Route::get('get-admin-score', [OfflineController::class, 'get_admin_score'])->name('get-admin-score');
Route::post('get-admin-score', [OfflineController::class, 'get_admin_score_post'])->name('get-admin-score');


Route::get('create', [ScoreSheetController::class, 'index'])->name('create');
Route::post('create-scoresheet', [ScoreSheetController::class, 'createScoreSheet'])->name('create-scoresheet');
Route::post('select-student', [ScoreSheetController::class, 'selectStudent'])->name('select-student');
Route::get('select-student-edit/{id}', [ScoreSheetController::class, 'selectStudentGet'])->name('select-student-edit');
Route::post('select-subjects', [ScoreSheetController::class, 'selectSubjects'])->name('select-subjects');
Route::get('select-subjects-edit/{id}', [ScoreSheetController::class, 'selectSubjectsEdit'])->name('select-subjects-edit');
Route::get('enter-marks/{id}', [ScoreSheetController::class, 'enterMarks'])->name('enter-marks');
Route::post('save-marks', [ScoreSheetController::class, 'saveMarks'])->name('save-marks');
Route::get('view-score-sheet/{id}', [ScoreSheetController::class, 'viewScoreSheet'])->name('view-score-sheet');
Route::get('student-scoresheet/{enrolled_student_id}', [ScoreSheetController::class, 'viewStudentScoreSheet'])->name('student-scoresheet');