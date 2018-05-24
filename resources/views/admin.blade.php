@extends('layouts.app')

@section('content')
    <table class="table table-stripped">
        <thead>
        <th> </th>
        <th>Name</th>       
        <th>E-Mail</th>   
        <th>User</th>
        <th>Author</th>
        <th>Admin</th>
        <th><a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a></th>
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