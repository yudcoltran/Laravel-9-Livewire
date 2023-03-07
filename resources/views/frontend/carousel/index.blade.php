@extends('layouts.app')

@section('title', 'Home')

@section('content')
<div id="carouselExampleCaptions" class="carousel slide">
    <div class="carousel-inner">
        @foreach ($sliders as $key => $slider)
            <div class="carousel-item {{ $key == '0' ? 'active' : '' }}">
                <img src="{{ asset($slider->image) }}" class="d-block w-100 " style="height: 700px; object-fit: cover" alt="Carousel">
                <div class="carousel-caption d-none d-md-block" style="top: 30%;">
                    <div class="float-start" style="">
                        <h2 class="text-white mb-4 text-start">{{ $slider->title }}</h2>
                        <p class="text-white mb-4 text-start fs-4">{{ $slider->description }}</p>
                        <a href="#" style="text-decoration: none;">
                            <button class="d-block  text-white" style="background-color: #76b900; font-size: 18px; border: 1px solid #76b900; padding: 10px 24px;">Khám phá ngay</button>
                        </a>
                    </div>
                </div>
            </div>
        @endforeach

    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
      <span class="carousel-control-prev-icon text-lg" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
      <span class="carousel-control-next-icon text-lg" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
@endsection
