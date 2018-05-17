
@section('content')
$tiles
    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count"> 
    @foreach ($tiles as $tile)
    <span class="count"><i class="fa fa-wrench"></i> {{$tile->utility_code}}</span>
    <span class="count_top">{{$tile->cnt}} </span>
    <span class="count_bottom"><i class="green">{{$tile->amnt}}/=</i> Tsh</span>
    @endforeach
   
    </div>
@endsection

 <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Total Users</span>
              <div class="count">2500</div>
              <span class="count_bottom"><i class="green">4% </i> From last Week</span>
            </div>