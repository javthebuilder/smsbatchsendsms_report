<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Sender;
use App\Models\PendingSend;
use File;
use App\Models\ErrorTracer;
use App\Jobs\TextJob;
use Carbon\Carbon;

class InExcelController extends Controller
{
    public function testJob(){
        error_log('dispatched on: '. now());
        \dispatch(new TextJob())->delay(now()->addSeconds(1));

        
        dump("test Job Create");
    }
    public function read_excel(Request  $request){

        //dd($request);
        $request->validate([
            'uploadfile' => 'required|mimes:,csv|max:20048',
        ]);

        $fileName = time().'.'.$request->uploadfile->extension();
        $request->uploadfile->move(public_path('uploads'), $fileName);
        $file = public_path('/uploads/'.$fileName );
        $csvData = file_get_contents($file);
        $rows = array_map("str_getcsv", explode("\n", $csvData));       
        $toSubmit = array();
        $out_counter = 0;
        foreach ($rows as $element) {
            $a = 0;

            if(count($element) > 1){

                $toSubmitMod = new \stdClass;
                $toSubmitMod->number = '--';
                $toSubmitMod->firstname = '';
                $toSubmitMod->lastname = '';
                $toSubmitMod->amountdue = 0.00;
                $toSubmitMod->duedate = '';
                $toSubmitMod->reference = '';

                foreach ($element as $atom) {
                    if($out_counter == 0){
                        continue;
                    }else{

                        if($a == 0){
                            $toSubmitMod->number = $atom;
                        }
                        if($a == 1){
                            $toSubmitMod->firstname = $atom;
                        }
                        if($a == 2){
                            $toSubmitMod->lastname = $atom;
                        }
                        if($a == 3){
                            $toSubmitMod->amountdue = $atom;
                        }
                        if($a == 4){
                            $toSubmitMod->duedate = $atom;
                        }
                        if($a == 5){
                            $toSubmitMod->reference  = $atom;

                        }

                        $a++;
                    }
                }
                if($out_counter != 0){
                    $modArray = (array)$toSubmitMod;


                    $toSubmitMod->message =  'Good Day, '.$modArray['firstname'].' '.$modArray['lastname'].'. New billing reminder, amount due is '.
                            number_format($modArray['amountdue'],2).' . Due date will be '.$modArray['duedate'].' Bill Ref # '.$modArray['reference'].'-'.$out_counter.'.';
                    array_push($toSubmit, $toSubmitMod);
                }

            }

            $out_counter++;
        }


        $batch_id = (string)date("YmdhisA") ;
        $batch_date = date("Y-m-d h:i:s");

        for($i = 0; $i < count($toSubmit) ; $i++){
            $arrayVersion = (array)$toSubmit[$i];
                $newP = new PendingSend();
                $newP->number = $arrayVersion['number'];
                $newP->message = $arrayVersion['message'];
                $newP->batchid = $batch_id;
                $newP->batchdate = $batch_date;
                $newP->save();                
                
                \dispatch(new TextJob())->delay(now()->addSeconds($i+1));

                
        }  
        
        
        File::delete($file);

       
        return view('excel_ex.sent')->with([


        ]);

    }
}
