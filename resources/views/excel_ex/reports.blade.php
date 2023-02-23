<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Batch SMS</title>
		<!-- External CSS -->
		<link rel="stylesheet" href="css/responsive.css" />
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
		
        <!-- DataTables -->
        <link rel="stylesheet" href="plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
        <link rel="stylesheet" href="plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
        <link rel="stylesheet" href="plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/adminlte.min.css">

		<!-- AJAX, JQuery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<!-- Icon Pack/Set -->
		<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
		<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
		<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
		<link rel="manifest" href="/site.webmanifest">
	</head>
	<body onload="setCurrentDate()">
        <div class="container">
            
        </div>
        <div class="container">
            <div class="filter-control-body wrapper">
                <button type="button" class="btn btn-warning btn-sm" id="gotoMain"><i class="bi bi-arrow-left-circle"></i>&nbsp;Back to Main</button>

                <h4 class="page-title-1 text-primary">Report Search | Filter</h4>
                <form method="GET" id="filter" action="{{ route('reports_data') }}">
                    <div class="filter-area border-success shadow rounded">
                        <div class="filter-control">
                            <label for="from" class="control-label">Date From</label>
                            <input type="date" id="from" name="from_batch_date" required>
                        </div>
                        <div class="filter-control">
                            <label for="to" class="control-label">Date To</label>
                            <input type="date" id="to" name="to_batch_date" required>
                        </div>
                        <div class="filter-control form-action">
                            <button class="btn btn-primary btn-block" name="search" id="inpSearch" onclick="renerateReport();">
                                <i class="fa fa-filter"></i> Filter 
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="container">
            <h3 class="table-header wrapper" style="display:flex; lign-items: center; align-items: center;">Batch : | Processed on:&nbsp; <p id="outputFrom"></p> &nbsp;  To   &nbsp; <p id="outputTo"></p></h3>
       
        <div class="container visually-hidden" style="text-align: center; color:blue" id="div_loader">
            <div>
                <h1>Loading...</h1>
            </div>
        </div>
        
        <div class="table-responsive container">
            
            <table id="example1" class="table">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Recepient</th>
                        <th>Status</th>
                        <th>Network</th>
                        <th>Message Type</th>
                        <th>Message</th>
                    </tr>
                </thead>
                <tbody id="tbody"> @foreach ($sender as $batch ) <tr>
                        <td id="batch_td">{{ date('M d, Y h:i a', strtotime($batch->batch_proccessed_date)) }}</td>
                        <td>{{ $batch->recipient }}</td>
                        <td>{{ $batch->status}}</td>
                        <td>{{ $batch->network }}</td>
                        <td>{{ $batch->message_type }}</td>
                        <td>{{ $batch->message }}</td>
                    </tr> @endforeach </tbody>
            </table>
        </div>

        <script>
            function renerateReport() {
                event.preventDefault();

                console.log('generate now');
                document.getElementById("div_loader").classList.remove('visually-hidden');

                from = document.getElementById('from').value;
                to = document.getElementById('to').value;
                console.log(from, to);

                $.ajax({        
                headers: {          
                    Accept: "application/json",         
                    
                },          
                type: 'POST',
                url: '/api/show-batch-history-range',
                data: {
                    'from':from,
                    'to':to
                },
                success: function(data) {
                    console.log(data); 

                    
                var tbody = ``;
                for(let i = 0; i < data.length; i++){

                        tbody +=
                            `<tr>
                                <td>` + data[i].batch_proccessed_date.toLocaleString() + `</td>
                                <td>` + data[i].recipient + `</td>
                                <td>` + data[i].status + `</td>
                                <td>` + data[i].network + `</td>
                                <td>` + data[i].message_type + `</td>
                                <td>` + data[i].message + `</td>
                            </tr>`
                            }
                            document.getElementById("div_loader").classList.add('visually-hidden');
                            document.getElementById("tbody").innerHTML = ``;
                            document.getElementById("tbody").innerHTML +=
                                tbody;
                            },
                            error: function (request, status, error) {            
                                
                            }

                        });
                    }

                function setCurrentDate(){

                    var date = new Date();
                    var currentDate = date.toISOString().substring(0,10);               
                    document.getElementById('from').value = currentDate;
                    document.getElementById('to').value = currentDate;
                    }
        </script>
        
        <script>
            document.getElementById("gotoMain").onclick = function () {
                location.href = "/";
            };
        </script>

        <script type="text/javascript">
            const inpFrom = document.getElementById("from");
            const inpTo = document.getElementById("to");  
            inpSearch.onclick = function(){

                const from = inpFrom.value;
                const to = inpTo.value;

                localStorage.setItem('from', from);
                localStorage.setItem('to', to);
                location.reload();
            };

                var  lsoutputFrom = localStorage.getItem("from");
                document.getElementById("outputFrom").innerHTML =  lsoutputFrom;
            
                var  lsoutputTo = localStorage.getItem("to");
                document.getElementById("outputTo").innerHTML =  lsoutputTo;

        </script>

        <script type="text/javascript">
                        
            var expanded = false;

            function showCheckboxes() {
            var checkboxes = document.getElementById("checkboxes");
            if (!expanded) {
                checkboxes.style.display = "block";
                expanded = true;
                } else {
                checkboxes.style.display = "none";
                expanded = false;
                }
            }
                            
        </script>
        <script type="text/javascript">

                function onBatch(){
                    
                        var checkbox_batch =document.getElementById("batch");
                        var batch_th = document.getElementById("batch_th");
                        var batch_td = document.getElementById("batch_td");

                        if (checkbox_batch.checked == true){
                          
                         batch_th.style.display = "block";
                        batch_td.style.display = "block";
                            
                        } else {
                            batch_th.style.display = "none";
                            batch_td.style.display = "none";

                            }
                        }       
        </script>
        <!-- jQuery -->
        <script src="plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap 4 -->
        <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
                <!-- DataTables  & Plugins -->
        <script src="plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
        <script src="plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
        <script src="plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
        <script src="plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
        <script src="plugins/jszip/jszip.min.js"></script>
        <script src="plugins/pdfmake/pdfmake.min.js"></script>
        <script src="plugins/pdfmake/vfs_fonts.js"></script>
        <script src="plugins/datatables-buttons/js/buttons.html5.min.js"></script>
        <script src="plugins/datatables-buttons/js/buttons.print.min.js"></script>
        <script src="plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
        <script>
            $(function () {
              $("#example1").DataTable({
                "responsive": true, "lengthChange": false, "autoWidth": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
              }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
              $('#example2').DataTable({
                "paging": false,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
              });
            });
          </script>
	</body>
</html>