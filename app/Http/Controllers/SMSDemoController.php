<?php

namespace App\Http\Controllers;
use DB;
use Illuminate\Http\Request;
use App\Models\Sender;
use App\Models\ErrorTracer;
use App\Models\PendingSend;
use File;
use App\Jobs\TextJob;
use App\Jobs\VerifySent;
use Carbon\Carbon;



use Exception;
use Illuminate\Database\QueryException;
class SMSDemoController extends Controller
{

    public function showBatchHistory(Request $request){


        //dd('showBatchHistory' . $request);
        $senders = Sender::orderBy('batchid', 'desc')->get();

        for($c = 0; $c < $senders->count(); $c++){
            error_log($c . '-showBatchHistory' );

            $id =  (int)$senders[$c]['id'];
            
        }

        return $senders;
    }

    public function showBatchHistoryRange(Request $request){


        
        $from = date($request->from);
        $to = date($request->to);
        //dd($from, $to);
        $senders = Sender::whereDate('batch_proccessed_date','<=', $from)
        ->whereDate('batch_proccessed_date','>=', $to)->get();
        //dd($senders);

        for($c = 0; $c < $senders->count(); $c++){
            error_log($c . '-showBatchHistory' );

            $id =  (int)$senders[$c]['id'];
            if($senders[$c]['status'] == "Pending"){

               
            }
        }

        return $senders;
    }

    
    public function showBatchIdHistory(Request $request, $batchid){

        $senders = Sender::where('batchid', '=', $batchid)->get();

        for($c =0; $c < $senders->count(); $c++){


            $id =  (int)$senders[$c]['id'];
            if($senders[$c]['status'] == "Pending"){
               

            }
        }

        return $senders;


    }

    public function acceptingBatch(Request $request){        
        
        $decoded = json_decode($request->getContent());
        $second_layer = json_decode($decoded);

        $batch_id = (string)date("YmdhisA") ;
        $batch_date = date("Y-m-d h:i:s");
        
        for($i = 0 ; $i < count($second_layer);$i++){

            error_log($second_layer[$i]->Number);
            $newP = new PendingSend();
            
            $newP->number = $second_layer[$i]->Number;
            $newP->message =$second_layer[$i]->MessageType."\nAccount:".
                            $second_layer[$i]->AccountNumber .", Amount due is ".
                            number_format($second_layer[$i]->AmountDue,2)." Period of ".
                            $second_layer[$i]->Period ." Due date will be ".
                            $second_layer[$i]->DueDate ."";            
            $newP->batchid = $batch_id;
            $newP->batchdate = $batch_date;
            $newP->message_type = $second_layer[$i]->MessageType;
            $newP->save();            
            \dispatch(new TextJob())->delay(now()->addSeconds($i+1));
            \dispatch(new VerifySent())->delay(now()->addSeconds(10+$i));
            

        }
        
        return 'ok';
        
    }

    public function acceptingBatchPowerInterruption(Request $request){        
        
        $decoded = json_decode($request->getContent());
        $second_layer = json_decode($decoded);

        $batch_id = (string)date("YmdhisA") ;
        $batch_date = date("Y-m-d h:i:s");
        
        for($i = 0 ; $i < count($second_layer);$i++){

            error_log($second_layer[$i]->Number);
            $newP = new PendingSend();
            
            $newP->number = $second_layer[$i]->Number;
            $newP->message = $second_layer[$i]->MessageType."\nAffected Areas:". 
                             $second_layer[$i]->AffectedArea .". Reason: ".
                             $second_layer[$i]->Reason .". Duration is From: ".
                             $second_layer[$i]->From." To:".$second_layer[$i]->To ."." ;

            $newP->batchid = $batch_id;
            $newP->batchdate = $batch_date;
            $newP->message_type = $second_layer[$i]->MessageType;
            $newP->save();            
            \dispatch(new TextJob())->delay(now()->addSeconds($i+1));
            \dispatch(new VerifySent())->delay(now()->addSeconds(10+$i));
            

        }
        
        return 'ok';
        
    }

    public function acceptingBatchInfo(Request $request){        
        
        $decoded = json_decode($request->getContent());
        $second_layer = json_decode($decoded);

        $batch_id = (string)date("YmdhisA") ;
        $batch_date = date("Y-m-d h:i:s");
        
        for($i = 0 ; $i < count($second_layer);$i++){

            error_log($second_layer[$i]->Number);
            $newP = new PendingSend();
            
            $newP->number = $second_layer[$i]->Number;
            $newP->message = $second_layer[$i]->MessageType."\n". 
                             $second_layer[$i]->Message .". ";
                             

            $newP->batchid = $batch_id;
            $newP->batchdate = $batch_date;
            $newP->message_type = $second_layer[$i]->MessageType;
            $newP->save();            
            \dispatch(new TextJob())->delay(now()->addSeconds($i+1));
            \dispatch(new VerifySent())->delay(now()->addSeconds(10+$i));
            

        }
        
        return 'ok';
        
    }
}
