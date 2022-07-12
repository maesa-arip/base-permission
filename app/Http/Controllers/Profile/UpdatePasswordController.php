<?php

namespace App\Http\Controllers\Profile;

use App\Actions\Fortify\UpdateUserPassword;
use Illuminate\Http\Request;

class UpdatePasswordController extends UpdateUserPassword
{
    public function edit()
    {
        return view('profile.update-password');
    }

    public function updatePassword()
    {
        $this->update(request()->user(), request()->all());
        $notification = array(
            'title' => 'Success',
            'message' => 'Update Password Berhasil',
            'position' => 'topRight',
            'alert-type' => 'success'
        );
        return back()->with($notification);
    }
}
