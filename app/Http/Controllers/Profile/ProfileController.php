<?php

namespace App\Http\Controllers\Profile;

use App\Actions\Fortify\UpdateUserProfileInformation;
use Illuminate\Http\Request;

class ProfileController extends UpdateUserProfileInformation
{
    public function edit()
    {
        return view('profile.update-profile');
    }

    public function updateProfileInformation()
    {
        $this->update(request()->user(), request()->all());
        $notification = array(
            'title' => 'Success',
            'message' => 'Update Profile Berhasil',
            'position' => 'topRight',
            'alert-type' => 'success'
        );
        return back()->with($notification);
    }
}
