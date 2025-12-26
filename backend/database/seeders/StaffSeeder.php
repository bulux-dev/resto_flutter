<?php

namespace Database\Seeders;

use App\Models\Staff;
use Illuminate\Database\Seeder;

class StaffSeeder extends Seeder
{
    public function run(): void
    {
        $staff = array(
            array('business_id' => '1', 'name' => 'Rakibul Islam', 'email' => 'rakibulislam@gmail.com', 'phone' => '01711223344', 'address' => 'Dhanmondi, Dhaka, Bangladesh', 'designation' => 'manager', 'created_at' => '2025-09-09 16:20:48', 'updated_at' => '2025-09-09 16:20:48'),
            array('business_id' => '1', 'name' => 'Nusrat Jahan', 'email' => 'nusratjahan@gmail.com', 'phone' => '01822334455', 'address' => 'Gulshan, Dhaka, Bangladesh', 'designation' => 'waiter', 'created_at' => '2025-09-09 16:22:15', 'updated_at' => '2025-09-09 16:22:15'),
            array('business_id' => '1', 'name' => 'Manik Mia', 'email' => 'manikmia@gmail.com', 'phone' => '01798342856', 'address' => 'Modijhil, Dhaka, Bangladesh', 'designation' => 'waiter', 'created_at' => '2025-09-09 16:22:15', 'updated_at' => '2025-09-09 16:22:15'),
            array('business_id' => '1', 'name' => 'Mehedi Hasan', 'email' => 'mehedihasan@gmail.com', 'phone' => '01933445566', 'address' => 'Chawkbazar, Chattogram, Bangladesh', 'designation' => 'chef', 'created_at' => '2025-09-09 16:23:30', 'updated_at' => '2025-09-09 16:23:30'),
            array('business_id' => '1', 'name' => 'Sharmin Akter', 'email' => 'sharminakter@gmail.com', 'phone' => '01644556677', 'address' => 'Kazla, Rajshahi, Bangladesh', 'designation' => 'cleaner', 'created_at' => '2025-09-09 16:24:45', 'updated_at' => '2025-09-09 16:24:45'),
            array('business_id' => '1', 'name' => 'Tanvir Ahmed', 'email' => 'tanvirahmed@gmail.com', 'phone' => '01555667788', 'address' => 'Agrabad, Chattogram, Bangladesh', 'designation' => 'driver', 'created_at' => '2025-09-09 16:26:00', 'updated_at' => '2025-09-09 16:26:00'),
            array('business_id' => '1', 'name' => 'Rafiq Chowdhury', 'email' => 'rafiqchowdhury@gmail.com', 'phone' => '01766778899', 'address' => 'Sylhet Sadar, Sylhet, Bangladesh', 'designation' => 'delivery_boy', 'created_at' => '2025-09-09 16:27:15', 'updated_at' => '2025-09-09 16:27:15'),
            array('business_id' => '1', 'name' => 'Mim Rahman', 'email' => 'mimrahman@gmail.com', 'phone' => '01877889900', 'address' => 'Khulna City, Khulna, Bangladesh', 'designation' => 'chef', 'created_at' => '2025-09-09 16:28:30', 'updated_at' => '2025-09-09 16:28:30'),
        );

        Staff::insert($staff);
    }
}
