<?php

namespace Database\Seeders;

// use App\Models\Permission;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Permission::create([
            'name' => 'assign permission',
            'guard_name' => 'web',
        ]);
        Permission::create([
            'name' => 'create navigation',
            'guard_name' => 'web',
        ]);
        Permission::create([
            'name' => 'show users',
            'guard_name' => 'web',
        ]);

       

    }
}
