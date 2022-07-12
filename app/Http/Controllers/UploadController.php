<?php

namespace App\Http\Controllers;

use App\Models\Registration;
use App\Models\TemporaryFile;
use Illuminate\Http\Request;

class UploadController extends Controller
{
    public function store(Request $request)
    {
        if ($request->hasFile('avatar')) {
            $file = $request->file('avatar');
            $folder = uniqid() . '-' . now()->timestamp;
            foreach ($file as $file) {
                $filename = $file->getClientOriginalName();

                $file->storeAs('public/avatars/tmp/' . $folder, $filename);

                TemporaryFile::create([
                    'folder' => $folder,
                    'filename' => $filename
                ]);

                return $folder;
                //return $filename;
            }
        }
        return '';
    }
    public function uploadSubmit(Request $request)

    { }
}
