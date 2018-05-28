@extends('layouts.blank')

@section('content')

<h3>NBC Agency Transactions Admin</h3>
 @if (session('status'))
    <div class="alert alert-success">
        {{ session('status') }}
    </div>
@endif 
    <table class="table table-stripped">
        <thead>
        
        <th>Name</th>       
        <th>E-Mail</th>   
        <th>User</th>
        <th>Author</th>
        <th>Admin</th>
        <th> </th>
        <th> <a class="btn btn-primary" type=submit href="{{ route('register') }}">{{ __('Create User') }}</a></th>
        </thead>
        
        <tbody>
        @foreach($users as $user)
            <tr>
                <form action="{{ route('admin.assign') }}" method="post">
                    <td>{{ $user->name }}</td>
                    
                    <td>{{ $user->email }} <input type="hidden" name="email" value="{{ $user->email }}"></td>
                    <td><input type="checkbox" {{ $user->hasRole('User') ? 'checked' : '' }} name="role_user"></td>
                    <td><input type="checkbox" {{ $user->hasRole('Author') ? 'checked' : '' }} name="role_author"></td>
                    <td><input type="checkbox" {{ $user->hasRole('Admin') ? 'checked' : '' }} name="role_admin"></td>
                    {{ csrf_field() }}
                    <td><button type="submit">Assign Roles</button></td>
                </form>
            </tr>
        @endforeach
        </tbody>
    </table>
    
@endsection