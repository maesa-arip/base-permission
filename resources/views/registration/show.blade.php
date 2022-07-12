<table class="table table-hover">
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th>NIK</th>
        <th>Jenis Kelamin</th>
        <th>Tempat Lahir</th>
        <th>Tanggal Lahir</th>
        <th>Alamat</th>
        <th>Nama Section</th>
        <th>Status Periksa</th>
    </tr>
    <tr>
        <td>{{ $model->id }}</td>
        <td>{{ $model->nama }}</td>
        <td>{{ $model->nik }}</td>
        <td>{{ $model->jenis_kelamin }}</td>
        <td>{{ $model->tempat_lahir }}</td>
        <td>{{ $model->tanggal_lahir }}</td>
        <td>{{ $model->alamat }}</td>
        <td>{{ $model->section->nama_section }}</td>
        <td>{{ $model->status_periksa }}</td>
    </tr>
</table>