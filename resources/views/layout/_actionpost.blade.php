<a href="{{ $url_show }}" class="btn btn-info btn-sm" title="Detail: {{ $model->name }}"><i class="fa fa-eye"></i> Detail</a>
<a href="{{ $url_edit }}" class="btn btn-info btn-sm" title="Edit {{ $model->name }}"><i class="fa fa-edit"></i> Edit</a>
<a href="{{ $url_destroy }}" class="btn-delete btn btn-danger btn-sm" title="{{ $model->name }}"><i class="far fa-trash-alt"></i> Delete</a>