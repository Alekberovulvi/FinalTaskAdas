<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Support\Str;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductsImg;
use Intervention\Image\Facades\Image;
use App\Models\Img;
use Illuminate\Support\Facades\Storage;

class ProductImgController extends Controller
{
    public function index(){
        $productimgs = ProductsImg::all();
        return view('admin.productimgs.index', compact('productimgs'));
    }

    public function create(){
        return view('admin.productimgs.create');
    }

    public function store(Request $request){
  
        $data = $request->all();
         if ($request->hasFile('file')) {
            $title = $request->title;
            $img = $request->file;
            $title = $request->title;
            $extension = $img->getClientOriginalExtension();
            $randomName = Str::random(10);
            $imagePath = 'front/assets/image/';
            $lastName = $randomName . "." . $extension;
            $lasPath = $imagePath . $randomName . "." . $extension;

            Image::make($img)->save($lasPath);
          
            $data['img'] =  $lasPath;
            $created = ProductsImg::create($data);
            
            if($created) {
         return redirect()->route('admin.products.index')->with('success', 'Şəkil uğurla yükləndi.');

            }
    }

}

    public function edit($id){
              $productImg = ProductsImg::findorFail($id);
    if (!$productImg) {
            return redirect()->back()->with('error', 'Product image not found');
        }
    return view('admin.productimgs.edit', compact('productImg'));
    }

    public function update(Request $request,$id){

         $request->validate([
        'author' => 'required|max:255',
        'title' => 'required|max:255',
        'img' => 'image|mimes:jpeg,png,jpg,gif,svg',
        'price' => 'numeric',
        'percent' => 'numeric',
            ]);

     

        $images = ProductsImg::find($id);
        if($request->hasFile('img')){
         
            if ($images->img !== null) {
            Storage::delete($images->img);
        }

             $newImage = $request->img;
        $extension = $newImage->getClientOriginalExtension();
        $randomName = Str::random(10);
        $imagePath = 'front/assets/image/';
        $newImageName = $randomName . "." . $extension;
        $newImagePath = $imagePath . $newImageName;

        Image::make($newImage)->save($newImagePath);

        $images->img = $newImagePath;
        }

    $images->author = $request->author;
    $images->title = $request->title;
    $images->img = $newImagePath;
    $images->price = $request->price;
    $images->percent = $request->percent;
   
    $images->save();

    return redirect()->route('admin.products.index');
    

}

public function destroy($id)
        {
           $a = ProductsImg::where('id',$id)->first();

        $a->delete();
        return redirect()->back();

        }
}