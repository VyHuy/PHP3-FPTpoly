
<table class="table">
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col"> Action</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($users as $item)
            
        <tr>
            <td>{{$item->id}}</td>
            <td>{{$item->name}}</td>
            <td>{{$item->email}}</td>
            <td>
                <a href="users/detail/{{$item->id}}">Detail</a>
            </td>
        </tr>
        
        @endforeach
      
    </tbody>
  </table>