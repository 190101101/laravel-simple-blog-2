<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Generator as Faker;

class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
        
        for($i = 0; $i < 100; $i++){
            $title = $faker->sentence(4);
            DB::table('blog')->insert([
                'title' => $title,
                'slug' => str_slug($title),
                'category_id' => rand(1, 6),
                'content' => $faker->text,
            ]);    
        }
    }
}

