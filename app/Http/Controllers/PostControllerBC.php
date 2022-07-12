<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Post;
use App\Models\TemporaryFile;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return \view('post.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $model = new Post();
        $category = Category::pluck('nama_kategori', 'id');
        return view('post.create', compact('model', 'category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'category_id' => 'required',
            'judul' => 'required',
            'konten' => 'required',
            'currency' => 'required'
        ]);

        $post = Post::create($request->all());
        

        $temporaryFile = TemporaryFile::wherein('folder', array($request->avatar));
        //$users = User::whereIn('id', array(1, 2, 3))->get();

        // if ($temporaryFile) {
        //     dd($request->avatar);
        //     $post->addMedia(storage_path('app/public/avatars/tmp/' . $request->avatar . '/' . $temporaryFile->filename))
        //         ->toMediaCollection('avatars');
        //     rmdir(storage_path('app/public/avatars/tmp/' . $request->avatar));
        //     $temporaryFile->delete();
        // }


        if ($temporaryFile) {
            foreach ($request->avatar as $avatar) {
                //$temporaryFile = TemporaryFile::wherein('folder', array($request->avatar));
                //dd($request->avatar, $temporaryFile->toSql());
                $post->addMedia(storage_path('app/public/avatars/tmp/' . $avatar . '/' . $temporaryFile->filename))
                    ->toMediaCollection('avatars');
                rmdir(storage_path('app/public/avatars/tmp/' . $avatar));
                $temporaryFile->delete();
            }
        }



        //return $model;
        $notification = array(
            'title' => 'Success',
            'message' => 'Data Berhasil Disimpan',
            'position' => 'topRight',
            'alert-type' => 'success'
        );
        return \redirect('post')->with($notification);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $model = Post::findOrFail($id);
        return view('post.show', compact('model'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::pluck('nama_kategori', 'id');
        $selectedID = Post::select('category_id')->where('id', $id)->sum('category_id');
        $model = Post::findOrFail($id);
        return view('post.edit', compact('model', 'category', 'selectedID'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $Post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'category_id' => 'required',
            'judul' => 'required',
            'konten' => 'required',
            'currency' => 'required'
        ]);

        $model = Post::findOrFail($id);

        $model->update($request->all());
        return \redirect('post')->with('status', 'Data Mahasiswa Berhasil Diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $Post
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $model = Post::findOrFail($id);
        $model->delete();
    }
    public function storeMedia(Request $request)
    {
        $path = storage_path('tmp/uploads');

        if (!file_exists($path)) {
            mkdir($path, 0777, true);
        }

        $file = $request->file('file');

        $name = uniqid() . '_' . trim($file->getClientOriginalName());

        $file->move($path, $name);

        return response()->json([
            'name'          => $name,
            'original_name' => $file->getClientOriginalName(),
        ]);
    }

    public function list_post(Request $request)
    {
        if ($request->ajax()) {
            if (!empty($request->from_date)) {
                if ($request->from_date === $request->to_date) {
                    $post = Post::join('categories', 'posts.category_id', '=', 'categories.id')
                        ->select(['posts.*', 'categories.nama_kategori'])
                        ->whereDate('posts.created_at', '=', $request->from_date);
                } else {
                    $post = Post::join('categories', 'posts.category_id', '=', 'categories.id')
                        ->select(['posts.*', 'categories.nama_kategori'])
                        ->whereBetween('posts.created_at', array($request->from_date, $request->to_date));
                }
            } else {
                $post = Post::join('categories', 'posts.category_id', '=', 'categories.id')
                    ->select(['posts.*', 'categories.nama_kategori']);
            }
            $datatable = 'DataTables';
            return $datatable::of($post)
                ->editColumn('nama_kategori', function ($model) {
                    return ($model->nama_kategori);
                })
                ->addColumn('action', function ($model) {
                    return view('layout._actionpost', [
                        'model' => $model,
                        'url_show' => route('post.show', $model->id),
                        'url_edit' => route('post.edit', $model->id),
                        'url_destroy' => route('post.destroy', $model->id)
                    ]);
                })
                ->addIndexColumn()
                ->rawColumns(['action'])
                ->make(true);
        }
    }
}
