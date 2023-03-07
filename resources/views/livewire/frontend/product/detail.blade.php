<div>
    <div class="py-3 py-md-5 bg-light">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mt-3">
                    <div class="bg-white border product-img">
                        <img src="{{ asset($product->productImages[0]->image) }}" class="w-100" alt="{{ $product->name }}">
                    </div>
                </div>
                <div class="col-md-7 mt-3">
                    <div class="product-view position-relative">
                        <h4 class="product-name">
                            {{ $product->name }}
                            @if($product->quantity > 0)
                                <label class="label-stock bg-success">In Stock</label>
                            @else
                                <label class="label-stock bg-danger">Out of Stock</label>
                            @endif
                            @if($product->trending)
                                <label class="label-trending bg-danger">Trending</label>
                            @endif
                        </h4>
                        <hr>
                        <p class="product-path">
                            Home / {{ $product->category->name }} / {{ $product->brand }} / {{ $product->name }}
                        </p>
                        <div>
                            <span class="selling-price">${{ $product->original_price }}</span>
                            <span class="original-price">${{ $product->selling_price }}</span>
                        </div>
                        <div class="mt-2">
                            <div class="input-group">
                                <span class="btn btn1" wire:click="decrementQuantity"><i class="fa fa-minus"></i></span>
                                <input type="text" wire:model="quantityCount" value="{{ $this->quantityCount }}" class="input-quantity" />
                                <span class="btn btn1"wire:click="incrementQuantity" ><i class="fa fa-plus"></i></span>
                            </div>
                        </div>
                        <div class="mt-2">
                            <button type="button" wire:click="addToCart({{ $product->id }})" class="btn btn1">
                                <i class="fa fa-shopping-cart"></i>
                                Add To Cart
                            </button>
                            <button type="button" wire:click="addToWishlist({{ $product->id }})" class="btn btn1">
                                <span >
                                    <i class="fa fa-heart"></i> Add To Wishlist
                                </span>
                            </button>
                        </div>
                        <div class="mt-3">
                            <h5 class="mb-3">Detail</h5>
                            <p>
                                {!! $product->small_description !!}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 mt-3">
                    <div class="card">
                        <div class="card-header bg-white text-dark">
                            <h4>Description</h4>
                        </div>
                        <div class="card-body">
                            <p>
                               {!! $product->description !!}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
