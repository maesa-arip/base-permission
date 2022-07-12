@extends('layout.appstisla')
@section('title','Detail Post')
@section('pagecss')
<link rel="stylesheet" href="{{asset('template')}}/node_modules/chocolat/dist/css/chocolat.css">
@endsection
@section('content')
<!-- Main Content -->
<div class="main-content">
    <section class="section">
    <div class="section-header">
            <div class="section-header-back">
                <a href="{{route('post.index')}}" class="btn btn-icon"><i class="fas fa-arrow-left"></i></a>
            </div>
            <h1>@yield('title')</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
                <div class="breadcrumb-item"><a href="#">Posts</a></div>
                <div class="breadcrumb-item">@yield('title')</div>
            </div>
        </div>
        <div class="section-body">
            <h2 class="section-title">@yield('title')</h2>
            <p class="section-lead">
                This is the page to show @yield('title').
            </p>

            <div class="row mt-sm-4">
                <div class="col-12 col-md-12 col-lg-5">
                    <div class="card profile-widget">
                        <div class="profile-widget-header">
                            <img alt="image" src="{{asset('template')}}/assets/img/avatar/avatar-1.png" class="rounded-circle profile-widget-picture">
                            <div class="profile-widget-items">
                                <div class="profile-widget-item">
                                    <div class="profile-widget-item-label">Nama</div>
                                    <div class="profile-widget-item-value">Nama User</div>
                                </div>

                            </div>
                        </div>
                        <!-- <div class="profile-widget-description">
                            <div class="profile-widget-name">Nama User <div class="text-muted d-inline font-weight-normal">
                                    <div class="slash"></div> Role User
                                </div>
                            </div>
                        </div> -->
                        <div class="card-body">
                            <div class="row">
                                <div class="form-group col-md-12 col-12">
                                    <label>Kategori</label>
                                    <input type="text" class="form-control" value="Ujang" readonly>
                                    <div class="invalid-feedback">
                                        Please fill in the first name
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-12 col-12">
                                    <label>Judul</label>
                                    <input type="text" class="form-control" value="Ujang" readonly>
                                    <div class="invalid-feedback">
                                        Please fill in the first name
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-7 col-12">
                                    <label>Currency</label>
                                    <input type="email" class="form-control" readonly>
                                    <div class="invalid-feedback">
                                        Please fill in the email
                                    </div>
                                </div>
                                <div class="form-group col-md-5 col-12">
                                    <label>Status Proyek</label>
                                    <input type="tel" class="form-control" readonly>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-7">
                    <div class="card">
                        <form method="post" class="needs-validation" novalidate="">
                            <div class="card-header">
                                <h4>Detail Lainnya</h4>
                            </div>
                            <div class="card-body">
                                <div class="ticket-content">
                                    <div class="ticket-header">
                                        <div class="ticket-detail">
                                            <div class="ticket-title">
                                                <h4>Konten</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="ticket-description">
                                        <p>{{$model->konten}}</p>


                                        <!-- <p>{{$model->getFirstMedia('document')}}</p> -->
                                        <!-- <p>{{$model->getFirstMediaUrl('document')}}</p> -->



                                        <div class="gallery">
                                                @foreach($model->getMedia('document') as $image)
                                                <div class="gallery-item" data-image="{{$image->getUrl()}}" data-title="Image {{ $loop->index+1 }}"></div>
                                                @endforeach
                                        </div>

                                        <div class="ticket-divider"></div>
                                    </div>
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
<script src="{{asset('template')}}/node_modules/chocolat/dist/js/jquery.chocolat.min.js"></script>
<script>
</script>
@endpush