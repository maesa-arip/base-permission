{!! Form::model($model, [
'route' => $model->exists ? ['section.update', $model->id] : 'section.store',
'method' => $model->exists ? 'PUT' : 'POST'
]) !!}

<div class="form-group">
    <label for="" class="control-label">Nama Section</label>
    {!! Form::text('nama_section', null, ['class' => 'form-control', 'id' => 'nama_section']) !!}
</div>


{!! Form::close() !!}