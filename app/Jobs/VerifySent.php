<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use DB;
use Illuminate\Http\Request;
use App\Models\Sender;
use App\Models\ErrorTracer;
use App\Models\PendingSend;
use File;
use App\Jobs\TextJob;
use App\Jobs\VerifySent;
use Carbon\Carbon;

class VerifySent implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $senders = Sender::where('status','Pending')->first();
        if ($senders != null ){

            
            
        }        
    }
}
