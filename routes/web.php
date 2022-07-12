<?php

use Illuminate\Support\Facades\Route;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\{
    HomeController,
    UploadController,
    PostController,
    UserController,
    SectionController,
    CategoryController,
    NavigationController,
    RegistrationController,
    Permissions\RoleController,
    Permissions\PermissionController,
    Permissions\AssignController,
    Permissions\UserPermissionController,
    Profile\ProfileController,
    Profile\UpdatePasswordController,
};

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

// Route::view('/tes', 'tes.tes');

Route::get('/home', [HomeController::class, 'dashboard'])->name('home')->middleware(['verified']);
Route::get('/', [HomeController::class, 'dashboard'])->name('dashboard')->middleware(['verified']);

Route::middleware('has.role', 'verified')->group(function () {
    Route::get('/dashboard', [HomeController::class, 'dashboard'])->name('dashboard');

    Route::get('profile/edit', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::put('profile/edit', [ProfileController::class, 'updateProfileInformation']);
    Route::get('password/edit', [UpdatePasswordController::class, 'edit'])->name('password.edit');
    Route::put('password/edit', [UpdatePasswordController::class, 'updatePassword']);

    Route::middleware('permission:create post')->group(function () {
        Route::resource('/post', PostController::class);
        Route::get('/table/post', [PostController::class, 'list_post'])->name('table.post');

        Route::post('upload', [UploadController::class, 'store']);
        Route::post('post/media', [PostController::class, 'storeMedia'])
            ->name('post.storeMedia');
    });

    Route::middleware('permission:create category')->group(function () {
        Route::resource('/category', CategoryController::class);
        Route::get('/table/category', [CategoryController::class, 'list_category'])->name('table.category');
    });

    Route::middleware('permission:create section')->group(function () {
        Route::resource('/section', SectionController::class);
        Route::get('/table/section', [SectionController::class, 'dataTable'])->name('table.section');
    });

    Route::middleware('permission:show users')->group(function () {
        Route::resource('/user', UserController::class);
        Route::get('/table/user', [UserController::class, 'dataTable'])->name('table.user');
    });

    Route::middleware('permission:create registration')->group(function () {
        Route::resource('/registration', RegistrationController::class);
        Route::get('/table/registration', [RegistrationController::class, 'list_registration'])->name('table.registration');
    });

    Route::prefix('role-and-permission')->namespace('Permissions')->middleware('permission:assign permission')->group(function () {
        Route::get('assignable', [AssignController::class, 'create'])->name('assign.create');
        Route::post('assignable', [AssignController::class, 'store']);
        Route::get('assignable/{role}/edit', [AssignController::class, 'edit'])->name('assign.edit');
        Route::put('assignable/{role}/edit', [AssignController::class, 'update']);
        //User
        Route::get('assign/user', [UserPermissionController::class, 'create'])->name('assign.user.create');
        Route::post('assign/user', [UserPermissionController::class, 'store']);
        Route::get('assign/{user}/user', [UserPermissionController::class, 'edit'])->name('assign.user.edit');
        Route::put('assign/{user}/user', [UserPermissionController::class, 'update']);

        Route::prefix('roles')->group(function () {
            Route::get('', [RoleController::class, 'index'])->name('roles.index');
            Route::post('create', [RoleController::class, 'store'])->name('roles.create');
            Route::get('{role}/edit', [RoleController::class, 'edit'])->name('roles.edit');
            Route::put('{role}/edit', [RoleController::class, 'update']);
        });

        Route::prefix('permissions')->group(function () {
            Route::get('', [PermissionController::class, 'index'])->name('permissions.index');
            Route::post('create', [PermissionController::class, 'store'])->name('permissions.create');
            Route::get('{permission}/edit', [PermissionController::class, 'edit'])->name('permissions.edit');
            Route::put('{permission}/edit', [PermissionController::class, 'update']);
        });
    });

    Route::prefix('navigation')->middleware('permission:create navigation')->group(function () {
        Route::get('create', [NavigationController::class, 'create'])->name('navigation.create');
        Route::post('create', [NavigationController::class, 'store']);
        Route::get('table', [NavigationController::class, 'table'])->name('navigation.table');
        Route::get('{navigation}/edit', [NavigationController::class, 'edit'])->name('navigation.edit');
        Route::put('{navigation}/edit', [NavigationController::class, 'update']);
        Route::delete('{navigation}/delete', [NavigationController::class, 'destroy'])->name('navigation.delete');
        // Route::resource('/navigation', NavigationController::class);
        // Route::get('/table/navigation', [NavigationController::class, 'list_navigation'])->name('table.navigation');
    });
});
