<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Generator as Faker;

class PageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
        $pages = ['about'];
        
        foreach($pages as $page){
            DB::table('page')->insert([
                'title' => $page,
                'slug' => str_slug($page),
                'content' => $faker->text,
            ]);    
        }
    }
}

