<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index(Request $request){
        $pagesize = config('common.default_page_size');
        // nhận dữ liệu từ form gửi lên & thực hiện filter
        $productQuery = Category::where('name', 'like', "%".$request->keyword."%");

        if($request->has('order_by') && $request->order_by > 0){
            if($request->order_by == 1){
                $productQuery->orderBy('name');
            }else if($request->order_by == 2){
                $productQuery->orderByDesc('name');
            }
        }
        // 1. dựa vào model Product lấy toàn bộ data trong db
        $cates = $productQuery->paginate($pagesize);
        $cates->load('products');
        $cates->appends($request->except('page'));
        // dd($products->currentPage());
        // 2. sinh ra màn hình danh sách với dữ liệu đã lấy đc
        return view('admin.category.index', 
            [
                'cates' => $cates,
            ]);
    }

    public function remove($id){
        Category::destroy($id);
        return redirect()->back();
    }
    // public function editForm($id){
    //     $products = Product::find($id);
    //     if(!$products){
    //         return redirect()->back();
    //     }
    //     $cates = Category::all();
    //     return view('admin.product.edit-form', compact('products', 'cates'));
    // }
    // public function saveEdit($id, Request $request){
    //     $model = Product::find($id);
    //     if(!$model){
    //         return redirect(route('product.index'));
    //     }
    //     $model->fill($request->all());
        
    //     // lưu ảnh
    //     if($request->hasFile('file_upload')){
    //         $newFileName = uniqid(). '-'.$request->file_upload->getClientOriginalName();
    //         $path = $request->file_upload->storeAs('public/uploads/products', $newFileName);
    //         $model->image = str_replace('public/','',$path);
    //     }
    //     $model->save();
    //     return redirect(route('product.index')); 
    // }
    // public function addForm(){
    //     $cates = Category::all();
    //     return view('admin.product.add-form', compact('cates'));
    // }
    // public function saveAdd(Request $request){
    //     $model = new Product();
    //     // gán giá trị cho các thuộc tính của object sử dụng massassign ($fillable trong model)
    //     $model->fill($request->all());
        
    //     // lưu ảnh
    //     if($request->hasFile('file_upload')){
    //         $newFileName = uniqid(). '-'.$request->file_upload->getClientOriginalName();
    //         $path = $request->file_upload->storeAs('public/uploads/products', $newFileName);
    //         $model->image = str_replace('public/','',$path);
    //     }
    //     $model->save();
    //     return redirect(route('product.index'));
    // }
}
