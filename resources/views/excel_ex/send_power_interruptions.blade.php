<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Batch SMS - Power Interrution</title>
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
    <div class="app-main-body container" style="background-color: #FFCCCB;">
        <div class="">
            <small><span class="text-primary">SMS</span> Batch Blaster</small>
            <p class="app-desc">Online SMS Batch Sender App</p>
        </div>
        <div style="text-align: center">
            <h1>Sending Power Interruptions Message</h1>
        </div>
        <hr style="border:1px solid #f1f1f1; width:80%;padding:0em 1em;"/>
        <form action="{{route('ex_in')}}" method="POST" enctype="multipart/form-data" id="submitBatchForm"> 
            <div id="uploadfile-section" class="upload-section container">
                @csrf
                <div class="form-control upload-row side-wrap">
                    <label for="uploadfile" class="form-label">Upload a XLSX File</label>
                    <input type="file"  name="files[]" id="upload" accept=".xls,.xlsx">                    
                </div>
            </div>    
        </form>
        <div class="action-area-section container side-wrap">            
            <button type="submit" class="btn btn-success btn-sm"  id="submitBatchButton" onclick="submitMyBatchPowerInterruption();"><i class="bi bi-send-check"></i>&nbsp; Batch Send Now</button>
            <a href="./sample/PowerInterruptionTemplate.xlsx" download="PowerInterruptionTemplate.xlsx" class="btn btn-primary btn-sm" id="downloadTemplate"><i class="bi bi-file-earmark-arrow-down-fill"></i>&nbsp; Download Template</a>
            <button type="button" class="btn btn-warning btn-sm" id="gotoMain"><i class="bi bi-arrow-left-circle"></i>&nbsp;Back to Main</button>
            
            
        </div>
    </div>
    <div class="container visually-hidden" style="text-align: center; color:blue" id="div_loader">
        <div>
            <h1>Loading...</h1>
        </div>
    </div>
    
    <div class="container visually-hidden" style="text-align: center; color:orange" id="div_loader_sending">
        <div>
            <h1>Sending Batch...</h1>
        </div>
    </div>
    <div class="table-responsive visually-hidden container" id="uploader_table">
        <table class="table collapse">
            <thead>
                <tr>
                <th>Number</th>
                <th colspan="5">Message</th>                  
                </tr>
            </thead>
            <tbody id="table_body">                    
            </tbody>
        </table>
    </div>
    <div id="history_div" class="history-table container"></div>
    <script src="./js/papaparse.js"></script>
    
    <script>
        document.getElementById("gotoMain").onclick = function () {
            location.href = "/";
        };
    </script>
    


    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.0/jszip.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.8.0/xlsx.js"></script>
<script>
    function showLoader(){
        document.getElementById("div_loader").classList.remove('visually-hidden');

    }
   var sendThisBatch;
  var ExcelToJSON = function() {
    
    this.parseExcel = function(file) {
        
      var reader = new FileReader();
      reader.onload = function(e) {

        var data = e.target.result;
        var workbook = XLSX.read(data, {
                type: 'binary'
                });
                
                workbook.SheetNames.forEach(function(sheetName) {                
                
                // Here is your object
                var XL_row_object = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheetName]);
                var json_object = JSON.stringify(XL_row_object);

                const excelObj = JSON.parse(json_object);
                // Load Hear
                const dataToSend = JSON.stringify(json_object);
                sendThisBatchPowerInterruption = dataToSend;
                
                
                
                var tbody = ``;
                for(let i = 0; i < excelObj.length; i++){
                    console.log( "i:" + excelObj[i]);                    

                    /** 
                     * Number	
                     * MessageType	
                     * AffectedArea	
                     * Reason	
                     * From	
                     * TO	
                     * Reference

                     * 
                     */


                        tbody +=
                            `<tr>
                        <td>
                            ` + excelObj[i].Number + `
                        </td>
                        <td>
                            `+excelObj[i].MessageType+` 
                            Affected Areas:` +
                            excelObj[i].AffectedArea + ` . Reason ` +
                            excelObj[i].Reason + `. Duration is From: ` +
                            excelObj[i].From + ` To:`+excelObj[i].To +`. 
                        </td>
                        
                        
                    
                    </tr>`
                }
                

                document.getElementById("div_loader").classList.add('visually-hidden');
                document.getElementById("uploader_table").classList.remove('visually-hidden');
                document.getElementById("table_body").classList.remove('visually-hidden');
                document.getElementById("table_body").innerHTML = ``;
                document.getElementById("table_body").innerHTML +=
                    tbody;
                    //document.getElementById("div_loader").classList.add('visually-hidden');
                
                
                })
            };

            reader.onerror = function(ex) {
                console.log(ex);
            };

            reader.readAsBinaryString(file);
            };
        };

        function handleFileSelect(evt) {
            
            setTimeout(showLoader(), 1000)
            //document.getElementById("div_loader").classList.remove('visually-hidden');

            var files = evt.target.files; // FileList object
            var xl2json = new ExcelToJSON();
            xl2json.parseExcel(files[0]);
        }
        </script>

        <script>
        document.getElementById('upload').addEventListener('change', handleFileSelect, false);
        </script>

        <script src="./js/main.js"></script>
    
</body>
</html>
