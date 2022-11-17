<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $catgories = ['other', 'php', 'javascript', 'python', 'java', 'swift'];

        foreach($catgories as $category){
            DB::table('category')->insert([
                'title' => $category,
                'slug' => str_slug($category),
            ]);
        }
    }
}
