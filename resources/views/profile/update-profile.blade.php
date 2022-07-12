@extends('layout.appstisla')
@section('title','Edit Profile')
@section('content')

<!-- Main Content -->
<div class="main-content">
    <section class="section">
        <div class="section-header">
            <h1>@yield('title')</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                <div class="breadcrumb-item">@yield('title')</div>
            </div>
        </div>
        <div class="section-body">
            <h2 class="section-title">Hi, {{auth()->user()->name}}</h2>
            <p class="section-lead">
                Change information about yourself on this page.
            </p>

            <div class="row mt-sm-4">
                <div class="col-12 col-md-12 col-lg-5">
                    <div class="card profile-widget">
                        <div class="profile-widget-header">
                            <img alt="image" src="{{asset('template')}}/assets/img/avatar/avatar-1.png" class="rounded-circle profile-widget-picture">
                            <div class="profile-widget-items">
                                <div class="profile-widget-item">
                                    <div class="profile-widget-item-label">Hi,</div>
                                    <div class="profile-widget-item-value">{{auth()->user()->name}}</div>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="profile-widget-description">
                            <div class="profile-widget-name">Ujang Maman <div class="text-muted d-inline font-weight-normal">
                                    <div class="slash"></div> Web Developer
                                </div>
                            </div>
                            Ujang maman is a superhero name in <b>Indonesia</b>, especially in my family. He is not a fictional character but an original hero in my family, a hero for his children and for his wife. So, I use the name as a user in this template. Not a tribute, I'm just bored with <b>'John Doe'</b>.
                        </div> -->
                        <div class="card-footer text-center">
                            <!-- <div class="font-weight-bold mb-2">Follow Ujang On</div> -->
                            <a href="#" class="btn btn-social-icon btn-facebook mr-1">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="btn btn-social-icon btn-twitter mr-1">
                                <i class="fab fa-twitter"></i>
                            </a>
                            <a href="#" class="btn btn-social-icon btn-github mr-1">
                                <i class="fab fa-github"></i>
                            </a>
                            <a href="#" class="btn btn-social-icon btn-instagram">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-7">
                    <div class="card">
                        <form method="post" action="{{route('profile.edit')}}" class="needs-validation" novalidate="">
                            @csrf
                            @method('PUT')
                            <div class="card-header">
                                <h4>@yield('title')</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="form-group col-md-6 col-12">
                                        <label>Name</label>
                                        <input type="text" name="name" id="name" value="{{old('name') ?? Auth::user()->name}}" class="form-control @error('name') is-invalid @enderror">
                                        @error('name')
                                        <div class="invalid-feedback">
                                            {{$message}}
                                        </div>
                                        @enderror
                                    </div>
                                </div>

                                <div class="card-footer text-right">
                                    <button class="btn btn-primary">Save Changes</button>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection

@push('scripts')
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