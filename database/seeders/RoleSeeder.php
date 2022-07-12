<?php

namespace Database\Seeders;

// use App\Models\Role;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class RoleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create([
           'name' => 'super admin',
           'guard_name' => 'web',
        ]);
    }
}
