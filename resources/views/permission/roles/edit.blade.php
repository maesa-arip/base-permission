@extends('layout.appstisla')
@section('title','Edit Roles')
@section('content')

<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <div class="section-header-back">
                <a href="{{route('roles.index')}}" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
            </div>
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
                            <form action="{{route('roles.edit',$role)}}" method="post">
                                @csrf
                                @method('PUT')
                                @include('permission.roles.partials.form-control')
                            </form>
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

@endpush