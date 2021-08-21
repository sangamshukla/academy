<?php

use App\Http\Controllers\ApiController;
use App\Http\Controllers\HomeWorkController;
use App\Models\BatchSession;
use App\Models\OrderPayment;
use App\Models\OrderSessionMap;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Storage;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/subjects/{id}', [ApiController::class, 'getSubjects']);
Route::get('/topics/{id}', [ApiController::class, 'getTopics']);
Route::get('/teacher/{teacherId}/{datetime}/{duration?}', [ApiController::class, 'getAvailableTeacher']);

Route::get('/get-session-on-batch/{batchId}', function ($batchId) {
    $sessions = BatchSession::where('batch_id', $batchId)->get();
    return view('ajax.session', compact('sessions'));
})->name('get-session-on-batch');



Route::get('/get-students-on-batch/{sessionId}', function ($sessionId) {
    $purchasedOrders = OrderSessionMap::where('session_id', $sessionId)->pluck('order_id')->toArray();
    $students = OrderPayment::whereIn('id', $purchasedOrders)->pluck('student_id')->toArray();
    $users = User::whereIn('id', $students)->get();
    return view('ajax.students', compact('users'));
})->name('get-session-on-batch1');


Route::get('/get-ajax-report', [HomeWorkController::class, 'makeMarkSheet']);

Route::post('/webhook', function () {
    \Stripe\Stripe::setApiKey('sk_test_51JAvqVSBWoxgIfNeH50XuVJ06GJPhUNyB9jQJLgUQOtYmjTyVK7cLVhbLGOvgdMgsyIwX4jbUDcjokHQYaPcTaBv0018VNQaS7');

    function print_log($val)
    {
        return file_put_contents('php://stderr', print_r($val, true));
    }

    // You can find your endpoint's secret in your webhook settings
    $endpoint_secret = 'whsec_Rr56Ya7ewOiTMOsjxIQXIVVPakA1GGBB';

    $payload = @file_get_contents('php://input');
    Storage::put(mt_rand().'txt', $payload);
    $sig_header = $_SERVER['HTTP_STRIPE_SIGNATURE'];
    $event = null;

    try {
        $event = \Stripe\Webhook::constructEvent(
            $payload,
            $sig_header,
            $endpoint_secret
        );
    } catch (\UnexpectedValueException $e) {
        // Invalid payload
        http_response_code(400);
        exit();
    } catch (\Stripe\Exception\SignatureVerificationException $e) {
        // Invalid signature
        http_response_code(400);
        exit();
    }

    print_log("Passed signature verification!");
    http_response_code(200);
});
