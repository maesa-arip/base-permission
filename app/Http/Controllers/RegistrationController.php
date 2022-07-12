<?php

namespace App\Http\Controllers;

use App\Models\Registration;
use App\Models\Section;
use Illuminate\Http\Request;

class RegistrationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('registration.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $model = new Registration();
        $section = Section::pluck('nama_section', 'id');
        return view('registration.form', compact('model', 'section'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'nama' => 'required|string|max:255',
            'nik' => 'required|string|max:255',
            'jenis_kelamin' => 'required|string|max:255',
            'tempat_lahir' => 'required|string|max:255',
            'tanggal_lahir' => 'required',
            'alamat' => 'required|string|max:255',
            'section_id' => 'required|string|max:255',

        ]);

        $model = Registration::create($request->all());
        return $model;
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $model = Registration::findOrFail($id);
        return view('registration.show', compact('model'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $model = Registration::findOrFail($id);
        $section = Section::pluck('nama_section', 'id');
        return view('registration.form', compact('model', 'section'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'nama' => 'required|string|max:255',
            'nik' => 'required|string|max:255',
            'jenis_kelamin' => 'required|string|max:255',
            'tempat_lahir' => 'required|string|max:255',
            'tanggal_lahir' => 'required',
            'alamat' => 'required|string|max:255',
            'section_id' => 'required|string|max:255',

        ]);
        $model = Registration::findOrFail($id);

        $model->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Registration  $registration
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $model = Registration::findOrFail($id);
        $model->delete();
    }
    // public function list_registration2()
    // {
    //     $model = Registration::with('section')->select('registrations.*');
    //     $datatable = 'DataTables';
    //     return $datatable::eloquent($model)
    //         ->addColumn('nama_section', function (Registration $registration) {
    //             return $registration->section->nama_section;
    //         })
    //         ->editColumn('status_periksa', function ($model) {
    //             if ($model->status_periksa == 0) return 'Belum';
    //             if ($model->status_periksa == 1) return 'Sudah Periksa';
    //             return 'Cancel';
    //         })
    //         ->addColumn('action', function ($model) {
    //             return view('layout._action', [
    //                 'model' => $model,
    //                 'url_show' => route('registration.show', $model->id),
    //                 'url_edit' => route('registration.edit', $model->id),
    //                 'url_destroy' => route('registration.destroy', $model->id)
    //             ]);
    //         })
    //         ->addIndexColumn()
    //         ->rawColumns(['action'])
    //         ->make(true);
    // }

    public function list_registration()
    {
        $registrations = Registration::join('sections', 'registrations.section_id', '=', 'sections.id')
            ->select(['registrations.*', 'sections.nama_section']);
        $datatable = 'DataTables';

        return $datatable::of($registrations)
            ->editColumn('nama_section', function ($model) {
                return ($model->nama_section);
            })
            ->editColumn('status_periksa', function ($model) {
                if ($model->status_periksa == 0) return 'Belum';
                if ($model->status_periksa == 1) return 'Sudah Periksa';
                return 'Cancel';
            })
            ->addColumn('action', function ($model) {
                return view('layout._action', [
                    'model' => $model,
                    'url_show' => route('registration.show', $model->id),
                    'url_edit' => route('registration.edit', $model->id),
                    'url_destroy' => route('registration.destroy', $model->id)
                ]);
            })
            ->addIndexColumn()
            ->rawColumns(['action'])
            ->make(true);
    }
}
