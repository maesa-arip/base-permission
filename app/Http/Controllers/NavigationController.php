<?php

namespace App\Http\Controllers;

use App\Models\Navigation;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;

class NavigationController extends Controller
{
    // public function index()
    // {
    //     return view('navigation.index');
    // }

    // public function list_navigation(Request $request)
    // {
    //     if ($request->ajax()) {
    //         if (!empty($request->from_date)) {
    //             if ($request->from_date === $request->to_date) {
    //                 $navigation = Navigation::whereNotNull('url')->get()
    //                     ->whereDate('navigations.created_at', '=', $request->from_date);
    //             } else {
    //                 $navigation = Navigation::whereNotNull('url')->get()
    //                     ->whereBetween('navigations.created_at', array($request->from_date, $request->to_date));
    //             }
    //         } else {
    //             $navigation = Navigation::whereNotNull('url')->get();
    //         }
    //         $datatable = 'DataTables';
    //         return $datatable::of($navigation)
    //             ->addColumn('action', function ($model) {
    //                 return view('layout._actionnavigation', [
    //                     'model' => $model,
    //                     'url_edit' => route('navigation.edit', $model->id),
    //                     'url_destroy' => route('navigation.destroy', $model->id)
    //                 ]);
    //             })
    //             ->addIndexColumn()
    //             ->rawColumns(['action'])
    //             ->make(true);
    //     }
    // }

    public function table()
    {
        $navigations = Navigation::whereNotNull('url')->get();
        return view('navigation.table', compact('navigations'));
    }
    public function create()
    {
        $navigation = new Navigation;
        $permissions = Permission::get();
        $navigations = Navigation::where('url', null)->get();
        $submit = "Create";
        return view('navigation.create', compact('permissions', 'navigations', 'submit', 'navigation'));
    }

    public function store()
    {
        request()->validate([
            'name' => 'required',
            'permission_name' => 'required',
        ]);

        Navigation::create([
            'name' => request('name'),
            'url' => request('url') ?? null,
            'parent_id' => request('parent_id') ?? null,
            'permission_name' => request('permission_name'),
        ]);
        $notification = array(
            'title' => 'Success',
            'message' => 'Navigation has been created   ',
            'position' => 'topRight',
            'alert-type' => 'success'
        );
        return back()->with($notification);
    }
    public function edit(Navigation $navigation)
    {
        $permissions = Permission::get();
        $navigations = Navigation::where('url', null)->get();
        $submit = "Update";
        return view('navigation.edit', compact('permissions', 'navigations', 'submit', 'navigation'));
    }

    public function update(Navigation $navigation)
    {
        $navigation->update([
            'name' => request('name'),
            'url' => request('url') ?? null,
            'parent_id' => request('parent_id') ?? null,
            'permission_name' => request('permission_name'),
        ]);
        $notification = array(
            'title' => 'Success',
            'message' => 'Data Berhasil di Update',
            'position' => 'topRight',
            'alert-type' => 'success'
        );
        return redirect()->route('navigation.table')->with($notification);
    }
    public function destroy(Navigation $navigation)
    {
        $navigation->delete();
        $notification = array(
            'title' => 'Success',
            'message' => 'Data Berhasil di Hapus',
            'position' => 'topRight',
            'alert-type' => 'success'
        );
        return redirect()->route('navigation.table')->with($notification);
    }
}
