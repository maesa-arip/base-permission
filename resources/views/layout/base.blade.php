<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" name="viewport">
    <title>@yield('title')</title>

    <!-- General CSS Files -->
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
    <!-- <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous"> -->

    <link rel="stylesheet" href="{{asset('template')}}/node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{asset('template')}}/node_modules/@fortawesome/fontawesome-free/css/all.css">

    <!-- Filepond -->
    <link rel="stylesheet" href="{{asset('template')}}/assets/css/filepond-plugin-image-preview.min.css">
    <link rel="stylesheet" href="{{asset('template')}}/assets/css/filepond.min.css">
    <!-- <link rel="stylesheet" href="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.css"> -->
    <!-- <link rel="stylesheet" href="https://unpkg.com/filepond/dist/filepond.min.css"> -->

    @yield('pagecss')

    <!-- CSS Libraries -->
    <link rel="stylesheet" href="{{asset('template')}}/node_modules/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="{{asset('template')}}/node_modules/datatables.net-select-bs4/css/select.bootstrap4.min.css">
    <link rel="stylesheet" href="{{asset('template')}}/node_modules/summernote/dist/summernote-bs4.css">

    <!-- Template CSS -->
    <link rel="stylesheet" href="{{asset('template')}}/assets/css/style.css">
    <link rel="stylesheet" href="{{asset('template')}}/assets/css/components.css">
    <link rel="stylesheet" href="{{asset('template')}}/node_modules/bootstrap-daterangepicker/daterangepicker.css">

    <!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
    <link rel="stylesheet" href="{{asset('template')}}/node_modules/jquery-ui-dist/jquery-ui.css">







    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.css" integrity="sha256-pODNVtK3uOhL8FUNWWvFQK0QoQoV3YA9wGGng6mbZ0E=" crossorigin="anonymous" /> -->

    <link rel="stylesheet" href="{{asset('template')}}/node_modules/izitoast/dist/css/iziToast.css">

    <!-- Server Side -->
    <!-- <link href="{{ asset('css/app.css') }}" rel="stylesheet"> -->
</head>

<body>
    <div id="app">
        <div class="main-wrapper">
            <div class="navbar-bg"></div>



            <!-- Main Content -->
            @yield('body')
            @include('layout._modal')
            <footer class="main-footer">
                <div class="footer-left">
                    Copyright &copy; 2018 <div class="bullet"></div> Design By <a href="https://nauval.in/">Muhamad Nauval Azhar</a>
                </div>
                <div class="footer-right">
                    2.3.0
                </div>
            </footer>
        </div>
    </div>

    <!-- General JS Scripts -->
    <!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script> -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> -->
    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script> -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script> -->

    <script src="{{asset('template')}}/node_modules/jquery/dist/jquery.min.js"></script>
    <script src="{{asset('template')}}/node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="{{asset('template')}}/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="{{asset('template')}}/node_modules/jquery.nicescroll/dist/jquery.nicescroll.min.js"></script>
    <script src="{{asset('template')}}/node_modules/moment/min/moment.min.js"></script>

    <!-- Server Side -->
    <script src="{{ asset('js/appserverside.js') }}"></script>

    <script src="{{asset('template')}}/assets/js/stisla.js"></script>



    <!-- JS Libraies -->
    <script src="{{asset('template')}}/node_modules/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="{{asset('template')}}/node_modules/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="{{asset('template')}}/node_modules/datatables.net-select-bs4/js/select.bootstrap4.min.js"></script>

    <!-- Template JS File -->
    <script src="{{asset('template')}}/assets/js/scripts.js"></script>
    <script src="{{asset('template')}}/assets/js/custom.js"></script>

    <!-- Page Specific JS File -->
    <!-- <script src="{{asset('template')}}/node_modules/cleave.js/dist/cleave.min.js"></script> -->
    <script src="{{asset('template')}}/assets/js/page/modules-datatables.js"></script>
    <script src="{{asset('template')}}/node_modules/bootstrap-daterangepicker/daterangepicker.js"></script>
    <script src="{{asset('template')}}/node_modules/summernote/dist/summernote-bs4.js"></script>
    <!-- <script src="{{asset('template')}}/assets/js/page/forms-advanced-forms.js"></script> -->

    <script src="https://unpkg.com/filepond-plugin-file-encode/dist/filepond-plugin-file-encode.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-image-crop/dist/filepond-plugin-image-crop.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-image-transform/dist/filepond-plugin-image-transform.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-file-validate-size/dist/filepond-plugin-file-validate-size.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-image-exif-orientation/dist/filepond-plugin-image-exif-orientation.min.js"></script>
    <script src="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js"></script>
    <script src="https://unpkg.com/filepond/dist/filepond.min.js"></script>


    <!-- https://unpkg.com/filepond-plugin-file-encode/dist/filepond-plugin-file-encode.min.js -->
    <!-- https://unpkg.com/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.min.js -->
    <!-- https://unpkg.com/filepond-plugin-image-exif-orientation/dist/filepond-plugin-image-exif-orientation.min.js -->
    <!-- https://unpkg.com/filepond-plugin-image-crop/dist/filepond-plugin-image-crop.min.js -->
    <!-- https://unpkg.com/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.min.js -->
    <!-- https://unpkg.com/filepond-plugin-image-transform/dist/filepond-plugin-image-transform.min.js -->
    <!-- https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.min.js -->
    <!-- https://unpkg.com/filepond/dist/filepond.min.js -->





    <!-- Sweetalert2 dan izitoast-->
    <script src="{{ asset('assets/vendor/sweetalert2/sweetalert2.all.min.js') }}"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.js" integrity="sha256-siqh9650JHbYFKyZeTEAhq+3jvkFCG8Iz+MHdr9eKrw=" crossorigin="anonymous"></script> -->
    <script src="{{asset('template')}}/node_modules/izitoast/dist/js/iziToast.js"></script>


    <!-- Page Specific JS File -->
    <!-- <script src="{{asset('template')}}/assets/js/page/bootstrap-modal.js"></script> -->



    @stack('scripts')
</body>

</html>