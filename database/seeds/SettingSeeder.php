<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SettingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('setting')->insert([
            [
                'description' => 'title',
                'key' => 'title',
                'value' => 'Clean Blog',
                'type' => 'text',
            ],
            [
                'description' => 'description',
                'key' => 'description',
                'value' => 'blog description',
                'type' => 'text',
            ],
            [
                'description' => 'copyright',
                'key' => 'copyright',
                'value' => 'copyright &copy; Your Website',
                'type' => 'text',
            ],
            [
                'description' => 'author',
                'key' => 'author',
                'value' => '190101101',
                'type' => 'text',
            ],
            [
                'description' => 'keyword',
                'key' => 'keyword',
                'value' => 'blog',
                'type' => 'text',
            ],
        ]);
    }
}
