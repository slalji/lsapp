<?php

use Illuminate\Database\Seeder;
use App\Role;
use App\User;
class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $role_user = Role::where ('name','User')->first();
        $role_author = Role::where ('name','Author')->first();
        $role_admin = Role::where ('name','Admin')->first();
       /* User::create(array(
            'name'     => 'Chris Sevilleja',
            'username' => 'sevilayha',
            'email'    => 'chris@scotch.io',
            'password' => Hash::make('awesome'),
        ));
        */
        $user = new User();
        $user->name = 'Victor';
        $user->email = 'victor@selcom.net';
        $user->password = Hash::make('K9@m2076');
        $user->roles()->attach($role_user);

        $admin = new User();
        $admin->name = 'Chris';
        $admin->email = 'chris@selcom.net';
        $admin->password = Hash::make('K9@m2076');
        $admin->roles()->attach($role_admin);

        $author = new User();
        $author->name = 'Andy';
        $author->email = 'andy@selcom.net';
        $author->password = Hash::make('K9@m2076');
        $author->roles()->attach($role_author);
    }
}
