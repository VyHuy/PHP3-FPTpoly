<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;

class HomeController extends Controller {
	// public function index(){
	//     $users = User::all();
	//     return view('users.index', compact('users'));
	// }
	public function productList() {
		$products = Product::orderByDesc('id')->paginate(20);
		$products->load('category');
		return view('product.list', compact('products'));
	}
	public function addProduct() {
		$products = Product::all();
		$cate     = Category::all();
		return view('product.add', compact('products', 'cate'));
	}
	public function saveProduct() {
		// $cate = Category::all();
		$products = new Product();
		$products->fill($_POST);

		// $files = $_FILES['image'];
		// $filename = '';
		//     if ($files['size'] > 0 ) {
		//     $filename = 'storage/app/public/uploads/products/' . uniqid() . '-' . $files['name'];
		//     move_uploaded_file($files['tmp_name'], './' . $filename);
		//     $products['image'] = $filename;

		//     }
		$products->save();
		return redirect('/products');
	}
	// public function detail($thienth){
	//     dd($thienth);
	// }
	// public function infoForm(){
	//     return view('users.info_form');
	// }
	// public function saveInfo(Request $request){
	//     // dd($request->all());
	//     $name =  $request->name;
	//     $age =  $request->age;
	//     $gender =  "";
	//     if($request->gender == 1){
	//         $gender = "Nam";
	//     }else if($request->gender == 2){
	//         $gender = "Nữ";
	//     }else {
	//         $gender = "Khác";
	//     }
	//     $isMarried =  $request->has('isMarried') ? "Đã lập gia đình" : "Độc thân";
	//     return view('users.submit', compact('name', 'age', 'gender', 'isMarried'));
	// }
}
