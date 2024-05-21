<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class MoveHashPassToPassword extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'app:move-hash-pass-to-password';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $users = \App\Models\Uzytkownik::all();
        foreach ($users as $user) {
            $user->password = $user->hash_pass;
            $user->save();
        }
        return 0;
    }
    
}
