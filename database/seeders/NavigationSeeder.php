<?php

namespace Database\Seeders;

use App\Models\Navigation;
use Illuminate\Database\Seeder;

class NavigationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Navigation::create([
            'name' => 'Role & Permission',
            'url' => null,
            'parent_id' => null,
            'permission_name' => 'assign permission',
        ]);
        Navigation::create([
            'name' => 'Navigation Setting',
            'url' => null,
            'parent_id' => null,
            'permission_name' => 'create navigation',
        ]);
        Navigation::create([
            'name' => 'Users',
            'url' => null,
            'parent_id' => null,
            'permission_name' => 'show users',
        ]);
        //Child Roles
        Navigation::create([
            'name' => 'Roles',
            'url' => 'role-and-permission/roles',
            'parent_id' => 1,
            'permission_name' => 'assign permission',
        ]);
        Navigation::create([
            'name' => 'Permissions',
            'url' => 'role-and-permission/permissions',
            'parent_id' => 1,
            'permission_name' => 'assign permission',
        ]);
        Navigation::create([
            'name' => 'Assign Permission',
            'url' => 'role-and-permission/assignable',
            'parent_id' => 1,
            'permission_name' => 'assign permission',
        ]);
        Navigation::create([
            'name' => 'Permissions to Users',
            'url' => 'role-and-permission/assign/user',
            'parent_id' => 1,
            'permission_name' => 'assign permission',
        ]);

        //Child Navigation
        Navigation::create([
            'name' => 'Create new Navigation',
            'url' => 'navigation/create',
            'parent_id' => 2,
            'permission_name' => 'create navigation',
        ]);
        Navigation::create([
            'name' => 'Data Navigation',
            'url' => 'navigation/table',
            'parent_id' => 2,
            'permission_name' => 'create navigation',
        ]);
        //Child Users
        Navigation::create([
            'name' => 'Data Users',
            'url' => 'user',
            'parent_id' => 3,
            'permission_name' => 'show users',
        ]);
    }
}
