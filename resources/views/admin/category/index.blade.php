@extends('admin.layouts.main')
@section('content')
    

<form action="" method="get">
    <div class="row">
        <div class="col-4">
            <div class="form-group">
                <label for="">Tên sp:</label>
                <input type="text" name="keyword" class="form-control">
            </div>
        </div>
        <div class="col-4">
            <div class="form-group">
                <label for="">Danh mục:</label>
                <select name="cate_id" class="form-control">
                    <option value="">Tất cả</option>
                    @foreach($cates as $c)
                    <option value="{{$c->id}}">{{$c->name}}</option>
                    @endforeach
                </select>    
            </div>
        </div>
        <div class="col-4">
            <div class="form-group">
                <label for="">Sắp xếp theo</label>
                <select name="order_by" class="form-control">
                    <option value="">Mặc định</option>
                    @foreach(config('common.product_order_by') as $k => $val)
                    <option value="{{$k}}">{{$val}}</option>
                    @endforeach
                </select>
            </div>
        </div>
        <div class="col-12 d-flex justify-content-center">
            <button class="btn btn-sm btn-primary" type="submit">Tìm kiếm</button>
        </div>    
    </div>
</form>

<table class="table table-hover">
    <thead>
        <th>STT</th>
        <th>Tên danh mục</th>
        <th>Số lượng</th>
        <th>
            <a href="{{route('category.add')}}">Tạp mới</a>
        </th>
    </thead>
    <tbody>
        @foreach($cates as $p)
        <tr>
            <td>{{(($cates->currentPage()-1)*config('common.default_page_size')) + $loop->iteration}}</td>
            <td>{{$p->name}}</td>
            <td>{{count($p->products)}}</td>
            <td>
                <a href="{{route('product.edit', ['id' => $p->id])}}">Sửa</a>
                <a href="{{route('category.remove', ['id' => $p->id])}}">Xóa</a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
<div class="row">
    <div class="col-6 offset-3 d-flex justify-content-center">
        {{$cates->links()}}
    </div>
</div>
@endsection