@extends('layout.appstisla')
@section('title','Edit Navigation')
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
                            <form action="{{route('navigation.edit',$navigation)}}" method="post">
                                @method("PUT")
                                @include('navigation.partials.form-control')

                            </form>

                        </div>
                        <div class="card-body">
                            <button class="btn btn-danger" data-toggle="modal" data-target="#navigation-{{$navigation->id}}">Delete</button>
                        </div>

                        <!-- <button class="btn btn-primary" id="modal-6">Delete</button> -->

                    </div>
                </div>
            </div>
        </div>

    </section>
    @include('navigation.delete',['navigation'=>$navigation])
</div>



@endsection