@php
use App\Models\Sender;
use Carbon\Carbon;
@endphp
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Batch SMS </title>
    <!-- External CSS -->
    <link rel="stylesheet" href="css/responsive.css"/>
    <link rel="stylesheet" href="css/style.css"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"> -->


    <!-- AJAX, JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <!-- Icon Pack/Set -->
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
</head>
<body>
    <div class="bg-overlay"><img src="images/cebeco.png" alt="cebeco"/></div>
    <div class="app-main-body container">
        <div class="app-header side-wrap">
            <h1 class="app-title"><span class="text-primary">SMS</span> Batch Blaster</h1>
            <p class="app-desc">Online SMS Batch Sender App</p>
        </div>

        <div style="margin: auto; width: 50%; ">
            <h2 >Select Type Of Message</h2>
            
        </div>
        <hr style="border:1px solid #f1f1f1; width:80%;padding:0em 1em;"/>
        <div class="action-area-section container side-wrap">            
            <button type="submit" class="btn btn-success btn-md"  id="gotoBills"><i class="bi bi-receipt-cutoff" style="size: 50em"></i>&nbsp;<br>BILLS</button>
            <button type="button" class="btn btn-warning btn-md" id="gotoPowerInterruption"><i class="bi bi-lightbulb-off-fill"></i>&nbsp;<br>POWER INTERRUPTION</button>
            <button type="button" class="btn btn-md" id="gotoInfo" style="background:cornflowerblue"><i class="bi bi-megaphone-fill"></i>&nbsp;<br>INFO</button>
            <button type="button" class="btn btn-md" id="gotoReports" style="background:darkseagreen"><i class="bi bi-clock-history""></i>&nbsp;<br>Reports</button>
            
            
        </div>
    </div>
    <div class="container visually-hidden" style="text-align: center;" id="div_loader">
        <div class="spinner-border m-5" role="status">
            <h1>Loading...</h1>
        </div>
    </div>
    <div class="container">
        @php
            $currentMonth  = date('M Y');
            $sentData = Sender::where('status', 'Sent')->whereMonth('created_at', Carbon::now()->month)->whereYear('created_at', Carbon::now()->year)->get();
            $pendingData = Sender::where('status', 'Pending')->whereMonth('created_at', Carbon::now()->month)->whereYear('created_at', Carbon::now()->year)->get();
            $errorData = Sender::where('status', 'Error')->whereMonth('created_at', Carbon::now()->month)->whereYear('created_at', Carbon::now()->year)->get();            
            
        @endphp
        <h3>{{$currentMonth}}</h3>
        <div class="table-responsive container" id="uploader_table">
            <table class="table collapse align-center" style="text-align: center">
                <thead>
                    <tr>
                    <th>Sent</th>
                    <th>Pending</th>
                    <th>Error</th>                    
                    </tr>
                </thead>
                <tbody>                    
                    <tr>
                        <td>
                            {{count($sentData)}}
                        </td>
                        <td>
                            {{count($pendingData)}}
                        </td>
                        <td>
                            {{count($errorData)}}
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>        
    
    <div id="history_div" class="history-table container"></div>
    <script src="./js/papaparse.js"></script>
    <script>
        document.getElementById("gotoPowerInterruption").onclick = function () {
            location.href = "/send-power-interruptions";
        };
        document.getElementById("gotoInfo").onclick = function () {
            location.href = "/send-info";
        };
        document.getElementById("gotoBills").onclick = function () {
            location.href = "/send-bills";
        };

        document.getElementById("gotoReports").onclick = function () {
            location.href = "/reports";
        };
    </script>
    


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    
</body>
</html>
