<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    public function run(): void
    {
        $users = array(
            array('business_id' => '1', 'staff_id' => NULL, 'email' => 'restaurant@acnoo.com', 'name' => 'Decca Super Food', 'role' => 'shop-owner', 'phone' => '056465456', 'image' => NULL, 'lang' => NULL, 'visibility' => NULL, 'password' => '$2y$10$XGIM0YQxGoOz454IbphYmuUmsZdPpu.aUjAj717UrcMdsjpld9BOK', 'status' => NULL, 'email_verified_at' => now(), 'remember_token' => NULL, 'created_at' => now(), 'updated_at' => now()),
            array('business_id' => '1', 'staff_id' => '4', 'email' => 'chef@acnoo.com', 'name' => 'Mehedi Hasan', 'role' => 'staff', 'phone' => '01933445566', 'image' => NULL, 'lang' => NULL, 'visibility' => '{"dashboard":{"view":"1"},"notification":{"view":"1"},"sales":{"view":"1"},"salesReport":{"view":"1"}}', 'password' => '$2y$10$Gt68RT4joxsHeLh4p6WISuG3lz1ZhaTs9oUYgNhyuHrk7spRFY6b6', 'status' => NULL, 'email_verified_at' => '2025-09-10 10:33:11', 'remember_token' => NULL, 'created_at' => '2025-09-10 10:21:04', 'updated_at' => '2025-09-10 11:21:15'),
            array('business_id' => '1', 'staff_id' => '3', 'email' => 'waiter@acnoo.com', 'name' => 'Manik Mia', 'role' => 'staff', 'phone' => '01798342856', 'image' => NULL, 'lang' => NULL, 'visibility' => '{"dashboard":{"view":"1"},"quotations":{"view":"1","create":"1","update":"1","delete":"1"},"tables":{"view":"1","create":"1","update":"1","delete":"1"},"notification":{"view":"1"},"sales":{"view":"1","create":"1","update":"1","delete":"1"},"salesReport":{"view":"1"},"salesQuotationReport":{"view":"1"}}', 'password' => '$2y$10$mj2h5Ri62bDAK64ZV7h3ceBwjIFbHzbih2HpUGOdKJjbG2uD9lsSu', 'status' => NULL, 'email_verified_at' => '2025-09-10 10:33:11', 'remember_token' => NULL, 'created_at' => '2025-09-10 10:18:46', 'updated_at' => '2025-09-10 11:28:51'),
        );

        User::insert($users);
    }
}
