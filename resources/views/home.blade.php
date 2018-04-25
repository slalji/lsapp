@extends('layouts.blank')

@section('content')
 
<!-- page content -->
<div class="right_col" role="main">
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif

    You are logged in!
</div>
<!-- /page content -->
@endsection
