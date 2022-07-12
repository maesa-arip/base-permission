@extends('layout.appstisla')
@section('title', 'User')
@section('content')

    <!-- Main Content -->
    <div class="main-content">
        <section class="section">
            <div class="section-header">
                <h1>@yield('title')</h1>
                <div class="section-header-button">
                    <a href="{{ route('user.create') }}" class="btn btn-primary modal-show">Tambah @yield('title')</a>
                </div>
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
                            {{-- @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                        @endif --}}
                            <div class="card-body">
                                <!-- MULAI DATE RANGE PICKER -->
                                <div class="row input-daterange">
                                    <div class="form-group col-md-4">

                                        <input type="text" class="form-control datepicker" name="from_date"
                                            id="from_date" readonly>
                                    </div>

                                    <div class="form-group col-md-4">

                                        <input type="text" class="form-control datepicker" name="to_date" id="to_date"
                                            readonly>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <button type="button" name="filter" id="filter"
                                            class="btn btn-primary">Filter</button>
                                        <button type="button" name="refresh" id="refresh"
                                            class="btn btn-default">Refresh</button>
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
                                                <th>Email</th>
                                                <th>Created_at</th>
                                                <th>Updated_at</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

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

@push('scripts')
<script>
    $('#datatable').DataTable({
        responsiv: true,
        autoWidth: false,
        processing: true,
        serverSide: true,
        ajax: "{{ route('table.user') }}",
        columns: [{
                data: 'DT_RowIndex',
                name: 'id'
            },
            {
                data: 'name',
                name: 'name'
            },
            {
                data: 'email',
                name: 'email'
            },
            {
                data: 'created_at',
                name: 'created_at'
            },
            {
                data: 'updated_at',
                name: 'updated_at'
            },
            {
                data: 'action',
                name: 'action'
            }
        ],
        order: [
            [0, 'desc']
        ],

    });
</script>
@endpush
