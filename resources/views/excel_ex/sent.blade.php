<!DOCTYPE HTML>

<html>

<head>
    <title>Batch SMS</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="sent_assets/assets/css/main.css" />
    <noscript><link rel="stylesheet" href="sent_assets/assets/css/noscript.css" /></noscript>
</head>

<body class="is-preload" onload="redirectAfterFiveSeconds()">

    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Header -->
        <header id="header" class="alt">
            <span class="logo"><img src="sent_assets/images/logo.svg" alt="" /></span>
            <h1>Successfully sent to the server.</h1>
            <h2>
                <a href="/">Send another batch?</a>
            </h2>
        </header>


    </div>

    <!-- Scripts -->
    <script src="sent_assets/assets/js/jquery.min.js"></script>
    <script src="sent_assets/assets/js/jquery.scrollex.min.js"></script>
    <script src="sent_assets/assets/js/jquery.scrolly.min.js"></script>


    <script src="sent_assets/assets/js/browser.min.js"></script>
    <script src="sent_assets/assets/js/breakpoints.min.js"></script>
    <script src="sent_assets/assets/js/util.js"></script>
    <script src="sent_assets/assets/js/main.js"></script>
    <script>
        function redirectAfterFiveSeconds() {

            

            setTimeout(function() { location.href = "/"; }, 5000);
            
        }        
    </script>


</body>

</html>