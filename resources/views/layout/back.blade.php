@extends('layout.base')

@section('body')
<x-layouts.navigation></x-layouts.navigation>
<x-layouts.sidebar></x-layouts.sidebar>
@yield('content')
@endsection