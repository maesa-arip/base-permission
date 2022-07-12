{!! Form::model($model, [
'route' => $model->exists ? ['registration.update', $model->id] : 'registration.store',
'method' => $model->exists ? 'PUT' : 'POST'
]) !!}


<div class="form-group">
    <label for="" class="control-label">Nama</label>
    {!! Form::text('nama', null, ['class' => 'form-control', 'id' => 'nama']) !!}
</div>

<div class="form-group">
    <label for="" class="control-label">NIK</label>
    {!! Form::number('nik', null, ['class' => 'form-control', 'id' => 'nik']) !!}
</div>

<div class="form-group">
    <label for="" class="control-label">Jenis Kelamin</label>
    {!! Form::select('jenis_kelamin', ['M' => 'Male', 'F' => 'Female'], null, ['class' => 'form-control','id' => 'jenis_kelamin']) !!}
</div>

<div class="form-group">
    <label for="" class="control-label">Tempat Lahir</label>
    {!! Form::text('tempat_lahir', null, ['class' => 'form-control', 'id' => 'tempat_lahir']) !!}
</div>



<div class="form-group">
    <label for="" class="control-label">Tanggal Lahir</label>
    {!! Form::text('tanggal_lahir', null, ['class' => 'form-control datemask', 'placeholder'=>'YYYY/MM/DD', 'id' => 'tanggal_lahir']) !!}
</div>

<div class="form-group">
    <label for="" class="control-label">Alamat</label>
    {!! Form::text('alamat', null, ['class' => 'form-control', 'id' => 'alamat']) !!}
</div>

<div class="form-group">
    {!! Form::Label('section', 'Section') !!}
    {!! Form::select('section_id', $section, null, ['class' => 'form-control','id' => 'section_id']) !!}
</div>


{!! Form::close() !!}