@extends('layout.appstisla')
@section('title','Registrasi')
@section('content')

<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>@yield('title')</h1>
            <div class="section-header-button">
                <a href="{{route('registration.create')}}" class="btn btn-primary modal-show">Tambah Registrasi</a>
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

                        <div class="card-body">
                            <!-- MULAI DATE RANGE PICKER -->
                            <div class="row input-daterange">
                                <div class="form-group col-md-4">

                                    <input type="text" class="form-control datepicker" name="from_date" id="from_date" readonly>
                                </div>

                                <div class="form-group col-md-4">

                                    <input type="text" class="form-control datepicker" name="to_date" id="to_date" readonly>
                                </div>

                                <!-- <div class="col-md-4 form-group">
                                    <input type="text" class="datepicker" name="from_date" id="from_date" class="form-control" placeholder="From Date" readonly />
                                </div>
                                <div class="col-md-4">
                                    <input type="text" name="to_date" id="to_date" class="form-control" placeholder="To Date" readonly />
                                </div> -->
                                <div class="form-group col-md-4">
                                    <button type="button" name="filter" id="filter" class="btn btn-primary">Filter</button>
                                    <button type="button" name="refresh" id="refresh" class="btn btn-default">Refresh</button>
                                </div>
                            </div>
                            <!-- AKHIR DATE RANGE PICKER -->
                            <!-- <br>
                            <a href="{{route('registration.create')}}" class="btn btn-info pull-right modal-show" style="margin-top: -8px;" title="Create Registration"><i class="icon-plus"></i> Tambah Registrasi</a>
                            <br><br> -->
                            <div class="table-responsive">
                                <table class="table table-striped" id="datatable">
                                    <thead>
                                        <tr>
                                            <th class="text-center">
                                                #
                                            </th>
                                            <th>Nama</th>
                                            <th>NIK</th>
                                            <th>Nama Section</th>
                                            <th>Status Periksa</th>
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
@section('script')
@endsection
<style>
    .datepicker {
        z-index: 11501;
    }
</style>
<!-- <script>
    $(document).ready(function() {
        //Iniliasi datepicker pada class input
        $('#from_date').datepicker({
            dateFormat: 'yy-mm-dd'
        });
        $('#to_date').datepicker({
            dateFormat: 'yy-mm-dd'
        });
        $('#tanggal_lahir').datepicker({
            dateFormat: 'yy-mm-dd'
        });

        //Date picker
        $('#from_date').datepicker({
            autoclose: true
        })
        $('#to_date').datepicker({
            autoclose: true
        });
        $('#tanggal_lahir').datepicker({
            autoclose: true
        });
    });
</script> -->
<script>
    $('#datatable').DataTable({
        responsiv: true,
        autoWidth: false,
        processing: true,
        serverSide: true,
        ajax: "{{ route('table.registration') }}",
        columns: [{
                data: 'DT_RowIndex',
                name: 'id'
            },
            {
                data: 'nama',
                name: 'nama'
            },
            {
                data: 'nik',
                name: 'nik'
            },
            {
                data: 'nama_section',
                name: 'sections.nama_section'
            },
            {
                data: 'status_periksa',
                name: 'status_periksa'
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