{!! Form::model($model, [
'route' => $model->exists ? ['category.update', $model->id] : 'category.store',
'method' => $model->exists ? 'PUT' : 'POST'
]) !!}

<div class="form-group">
    <label for="" class="control-label">Nama Kategori</label>
    {!! Form::text('nama_kategori', null, ['class' => 'form-control', 'id' => 'nama_kategori']) !!}
</div>


{!! Form::close() !!}