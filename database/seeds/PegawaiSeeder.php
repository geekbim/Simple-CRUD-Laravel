<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

class PegawaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //insert data ke table pegawai dengan seeder
        // DB::table('pegawai')->insert([
        //     'pegawai_nama' => 'Joni',
        //     'pegawai_jabatan' => 'Web Designer',
        //     'pegawai_umur' => 19,
        //     'pegawai_alamat' => 'Tambun Selatan',
        // ]);

        $faker = Faker::create('id_ID');

        for ($i=0; $i < 50; $i++) { 
            
            // insert data ke table pegawai menggunakan Faker
            DB::table('pegawai')->insert([
                'pegawai_nama' => $faker->name,
                'pegawai_jabatan' => $faker->jobTitle,
                'pegawai_umur' => $faker->numberBetween(17, 40),
                'pegawai_alamat' => $faker->address
            ]);

        }
    }
}
