@extends('layout.appstisla')
@section('title','Edit Post')
@section('pagecss')
<link rel="stylesheet" href="{{asset('template')}}/tambahan/css/dropzone.min.css">
<!-- <link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.5.1/min/dropzone.min.css" rel="stylesheet" /> -->

@endsection
@section('content')
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
                On this page you can create a new post and fill in all fields.
            </p>

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4>Write Your Post</h4>
                        </div>
                        <form method="post" action="/post/{{$model->id}}">
                            @method('patch')
                            @csrf
                            <div class="card-body">
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Judul</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" class="form-control @error('judul') is-invalid @enderror" id="judul" name="judul" value="{{$model->judul}}" placeholder="Masukan Judul">
                                        @error('judul')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Kategori</label>
                                    <div class="col-sm-12 col-md-7">
                                        <select name="category_id" id="category_id" class="form-control required">
                                            <option>Select Item</option>
                                            @foreach ($category as $key => $value)
                                            <option value="{{ $key }}" {{ ( $key == $selectedID) ? 'selected' : '' }}>
                                                {{ $value }}
                                            </option>
                                            @endforeach

                                        </select>
                                    </div>
                                </div>
                                <!-- <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Konten</label>
                                    <div class="col-sm-12 col-md-7">
                                        <textarea class="summernote-simple" name="konten" id="konten"></textarea>
                                    </div>
                                </div> -->
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Konten</label>
                                    <div class="col-sm-12 col-md-7">
                                        <input type="text" class="form-control @error('konten') is-invalid @enderror" id="konten" name="konten" value="{{$model->konten}}" placeholder="Masukan konten">
                                        @error('konten')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                        @enderror
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Currency</label>
                                    <div class="col-sm-12 col-md-7">
                                        <div class="card">
                                            <div class="card-header">
                                                <input type="number" class="form-control @error('currency') is-invalid @enderror" id="inputAngka" name="currency" value="{{$model->currency}}" placeholder="Masukan currency">
                                            </div>
                                            @error('currency')
                                            <div class="card-body">
                                            {{ $message }}
                                            </div>
                                            @enderror
                                            <div class="card-footer bg-whitesmoke">
                                                Rp. <span id="showTextRibuan"></span>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3">Document</label>
                                    <div class="col-sm-12 col-md-7">
                                    <div class="needsclick dropzone" id="document-dropzone">
                                    </div>
                                    </div>
                                </div>
                                <div class="form-group row mb-4">
                                    <label class="col-form-label text-md-right col-12 col-md-3 col-lg-3"></label>
                                    <div class="col-sm-12 col-md-7">
                                        <button class="btn btn-primary">Update Post</button>
                                    </div>
                                </div>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.5.1/min/dropzone.min.js"></script>
<script src="{{asset('template')}}/assets/js/tambahan/jquery.mask.min.js"></script>
<script type="text/javascript">
		$('#inputAngka').on('keyup',function(){
			var angka = $(this).val();
			var hasilAngka = formatRibuan(angka);
			$('#showTextRibuan').text(hasilAngka);
		});
		function formatRibuan(angka){
			var number_string = angka.replace(/[^,\d]/g, '').toString(),
			split   		= number_string.split(','),
			sisa     		= split[0].length % 3,
			angka_hasil     = split[0].substr(0, sisa),
			ribuan     		= split[0].substr(sisa).match(/\d{3}/gi);
			if(ribuan){
				separator = sisa ? '.' : '';
				angka_hasil += separator + ribuan.join('.');
			}
			angka_hasil = split[1] != undefined ? angka_hasil + ',' + split[1] : angka_hasil;
			return angka_hasil;
		}
</script>

<script>
  var uploadedDocumentMap = {}
  Dropzone.options.documentDropzone = {
    url: '{{ route('post.storeMedia') }}',
    maxFilesize: 2, // MB
    addRemoveLinks: true,
    headers: {
      'X-CSRF-TOKEN': "{{ csrf_token() }}"
    },
    success: function (file, response) {
      $('form').append('<input type="hidden" name="document[]" value="' + response.name + '">')
      uploadedDocumentMap[file.name] = response.name
    },
    removedfile: function (file) {
      file.previewElement.remove()
      var name = ''
      if (typeof file.file_name !== 'undefined') {
        name = file.file_name
      } else {
        name = uploadedDocumentMap[file.name]
      }
      $('form').find('input[name="document[]"][value="' + name + '"]').remove()
    },
    init: function () {   
      @if(isset($model) && $model->document)
      
        @foreach($model->document as $image)
        var urlpreview = {!! json_encode($image->getUrl()) !!}
        var file = {!! json_encode($image) !!}
        this.options.addedfile.call(this, file)
        file.previewElement.classList.add('dz-success')
        file.previewElement.classList.add('dz-complete')
        this.options.thumbnail.call(this, file, urlpreview );
        
        $('form').append('<input type="hidden" name="document[]" value="' + file.file_name + '">')
        // console.log(file);
        @endforeach
      @endif
    }
  }
</script>

<script>

    FilePond.registerPlugin(
        FilePondPluginFileEncode,
        FilePondPluginFileValidateSize,
        FilePondPluginImageExifOrientation,
        FilePondPluginImagePreview
    );
    FilePond.registerPlugin(
        FilePondPluginFileEncode,
        FilePondPluginFileValidateSize,
        FilePondPluginFileValidateType,
        FilePondPluginImageExifOrientation,
        FilePondPluginImagePreview,
        FilePondPluginImageCrop,
        FilePondPluginImageResize,
        FilePondPluginImageTransform
    );
    FilePond.create(
        document.querySelector('input[id="avatar"]')
    );
    FilePond.setOptions({
        server: {
            url: '/upload',
            headers: {
                'X-CSRF-TOKEN': '{{csrf_token()}}'
            }
        }
    });
</script>

@endpush