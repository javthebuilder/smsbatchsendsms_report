<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Http\Request;
use App\Models\Sender;
use App\Models\PendingSend;
use File;
use App\Models\ErrorTracer;

class TextJob implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;


    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        /// wait for 1 second
        error_log('handled on :' . now());
        error_log('TextJob | Jobs Getting Handled:');

        $toSubmit = PendingSend::where('status', 'P')->first();
        error_log(''. $toSubmit->id);

        if ($toSubmit != null ) {
            if(strlen($toSubmit->number) < 10){

                $toSubmit->status = 'E';
                $toSubmit->save();
            }else{
                try{

                    


                } catch (Exception $e) {

                    $et = new ErrorTracer();
                    $et->message_info = $batch_id;;
                    $et->message = $e->getMessage();
                    $et->from_api = $output;
                    $et->save();

                } catch (QueryException $e) {

                    $et = new ErrorTracer();
                    $et->message_info = $batch_id;;
                    $et->message = $e->getMessage();
                    $et->from_api = $output;
                    $et->save();
                }

            }
        }


















    }
}
