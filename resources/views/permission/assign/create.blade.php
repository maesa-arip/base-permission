@extends('layout.appstisla')
@section('title','Assign Permission')
@section('pagecss')
<link rel="stylesheet" href="{{asset('template')}}/node_modules/select2/dist/css/select2.min.css">
@endsection

@push('scripts')
<script src="{{asset('template')}}/node_modules/select2/dist/js/select2.full.min.js"></script>
<script>
    $(document).ready(function() {
        $('.select2').select2({
            placeholder: "Pilih Permissions"
        });
    });
</script>
<script>
    @if(Session::has('message'))

    var type = "{{ Session::get('alert-type', 'info') }}";
    switch (type) {
        case 'info':
            iziToast.info({
                title: ("{{ Session::get('title') }}"),
                message: ("{{ Session::get('message') }}"),
                position: ("{{ Session::get('position') }}")
            });
            break;

        case 'warning':
            iziToast.warning({
                title: ("{{ Session::get('title') }}"),
                message: ("{{ Session::get('message') }}"),
                position: ("{{ Session::get('position') }}")
            });
            break;

        case 'success':
            iziToast.success({
                title: ("{{ Session::get('title') }}"),
                message: ("{{ Session::get('message') }}"),
                position: ("{{ Session::get('position') }}")
            });
            break;

        case 'error':
            iziToast.error({
                title: ("{{ Session::get('title') }}"),
                message: ("{{ Session::get('message') }}"),
                position: ("{{ Session::get('position') }}")
            });
            break;
    }
    @endif
</script>
@endpush

@section('content')

<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>@yield('title')</h1>

            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                <!-- <div class="breadcrumb-item"><a href="#">Modules</a></div> -->
                <div class="breadcrumb-item">@yield('title')</div>
            </div>
        </div>

        <div class="section-body">
            <h2 class="section-title">@yield('title')</h2>
            <p class="section-lead">
                You can manage all @yield('title'), such as editing, deleting and more.
            </p>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>@yield('title')</h4>
                        </div>
                        <div class="card-body">
                            <form action="{{route('assign.create')}}" method="post">
                                @csrf
                                <div class="form-group">
                                    <label for="role">Role Name</label>
                                    <select name="role" id="role" class="form-control">
                                        <option disabled selected>Pilih Role</option>
                                        @foreach ($roles as $role)
                                        <option value="{{$role->id}}">{{$role->name}}</option>
                                        @endforeach

                                    </select>
                                    @error('role')
                                    <div class="text-danger" mt-2 d-block>{{$message}}</div>
                                    @enderror
                                </div>

                                <div class="form-group">
                                    <label for="permissons">Permissions</label>
                                    <select name="permissions[]" id="permissions" class="form-control select2" multiple>
                                        @foreach ($permissions as $permission)
                                        <option value="{{$permission->id}}">{{$permission->name}}</option>
                                        @endforeach
                                    </select>
                                    @error('permissions')
                                    <div class="text-danger" mt-2 d-block>{{$message}}</div>
                                    @enderror
                                </div>
                                <button type="submit" class="btn btn-secondary">Assign</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>@yield('title')</h4>
                        </div>
                        @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                        @endif
                        <div class="card-body">

                            <!-- MULAI DATE RANGE PICKER -->
                            <div class="row input-daterange">
                                <div class="form-group col-md-4">

                                    <input type="text" class="form-control datepicker" name="from_date" id="from_date" readonly>
                                </div>

                                <div class="form-group col-md-4">

                                    <input type="text" class="form-control datepicker" name="to_date" id="to_date" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <button type="button" name="filter" id="filter" class="btn btn-primary">Filter</button>
                                    <button type="button" name="refresh" id="refresh" class="btn btn-default">Refresh</button>
                                </div>
                            </div>
                            <!-- AKHIR DATE RANGE PICKER -->
                            <div class="table-responsive">
                                <table class="table table-striped" id="datatable">
                                    <thead>
                                        <tr>
                                            <th class="text-center">
                                                #
                                            </th>
                                            <th>Name</th>
                                            <th>Guard Name</th>
                                            <th>Permissions</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($roles as $index=>$role)
                                        <tr>
                                            <td>{{$index+1}}</td>
                                            <td>{{$role->name}}</td>
                                            <td>{{$role->guard_name}}</td>
                                            <td>{{implode(', ',$role->getPermissionNames()->toArray())}}</td>
                                            <td><a href="{{route('assign.edit',$role)}}" class="btn btn-info btn-sm"><i class="fa fa-edit"></i> Sync</a></td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection