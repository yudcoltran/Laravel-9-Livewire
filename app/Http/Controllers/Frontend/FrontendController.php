<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\Slider;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index() {
        $sliders = Slider::where('status', '0')->get();
        return view('frontend.carousel.index', compact('sliders'));
    }

    public function categories(){
        $cats = Category::where('status', '0')->get();
        return view('frontend.collections.category.index', compact('cats'));
    }

    public function products($category_slug){
        $category = Category::where('slug', $category_slug )->first();
        if($category) {
            return view('frontend.collections.products.index', compact('category'));
        }else {
            return redirect()->back();
        }
    }

    public function productDetail(string $category_slug, string $product_slug){
        $category = Category::where('slug', $category_slug )->first();
        if($category) {
            $product = $category->products()->where('slug', $product_slug)->where('status', '0')->first();
            if($product){
                return view('frontend.collections.products.detail', compact('product', 'category'));
            }else {
                return redirect()->back();
            }
        }else {
            return redirect()->back();
        }
    }

    public function thankyou(){
        return view('frontend.thankyou.thank-you');
    }
}
