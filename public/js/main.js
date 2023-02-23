var toSubmitList = [];




function submitMyBatch() {

    event.preventDefault();
    console.log('submitMyBatch clicked')

    if (confirm("Are you sure you want to proceed?")) {
        document.getElementById("div_loader_sending").classList.remove('visually-hidden');



        let dataReceived = "";
        fetch("/api/accept-batch-message", {
                credentials: "same-origin",
                mode: "same-origin",
                method: "post",
                headers: { "Content-Type": "application/json" },
                body: sendThisBatch
            })
            .then(resp => {
                if (resp.status === 200) {

                    document.getElementById("div_loader_sending").classList.add('visually-hidden');
                    window.location.href = "/batch_sent_server";
                    return resp.json()

                } else {
                    console.log("Status: " + resp.status)
                    return Promise.reject("server")
                }
            })
            .then(dataJson => {
                dataReceived = JSON.parse(dataJson);
                console.log('ok')
                document.getElementById("div_loader_sending").classList.add('visually-hidden');
            })
            .catch(err => {
                if (err === "server") return
                console.log(err)
                document.getElementById("div_loader_sending").classList.add('visually-hidden');
            })

        console.log(`Received: ${dataReceived}`)


        //document.getElementById("submitBatchForm").submit();
    } else {
        // user clicked Cancel
    }
}






function submitMyBatchPowerInterruption() {

    event.preventDefault();
    console.log('submitMyBatch clicked')

    if (confirm("Are you sure you want to proceed?")) {
        document.getElementById("div_loader_sending").classList.remove('visually-hidden');



        let dataReceived = "";
        fetch("/api/accept-batch-message-power-interruption", {
                credentials: "same-origin",
                mode: "same-origin",
                method: "post",
                headers: { "Content-Type": "application/json" },
                body: sendThisBatchPowerInterruption
            })
            .then(resp => {
                if (resp.status === 200) {

                    document.getElementById("div_loader_sending").classList.add('visually-hidden');
                    window.location.href = "/batch_sent_server";
                    return resp.json()

                } else {
                    console.log("Status: " + resp.status)
                    return Promise.reject("server")
                }
            })
            .then(dataJson => {
                dataReceived = JSON.parse(dataJson);
                console.log('ok')
                document.getElementById("div_loader_sending").classList.add('visually-hidden');
            })
            .catch(err => {
                if (err === "server") return
                console.log(err)
                document.getElementById("div_loader_sending").classList.add('visually-hidden');
            })

        console.log(`Received: ${dataReceived}`)


        //document.getElementById("submitBatchForm").submit();
    } else {
        // user clicked Cancel
    }
}


function submitMyBatchInfo() {

    event.preventDefault();
    console.log('submitMyBatchInfo clicked')

    if (confirm("Are you sure you want to proceed?")) {
        document.getElementById("div_loader_sending").classList.remove('visually-hidden');



        let dataReceived = "";
        fetch("/api/accept-batch-message-info", {
                credentials: "same-origin",
                mode: "same-origin",
                method: "post",
                headers: { "Content-Type": "application/json" },
                body: sendThisBatchInfo
            })
            .then(resp => {
                if (resp.status === 200) {

                    document.getElementById("div_loader_sending").classList.add('visually-hidden');
                    window.location.href = "/batch_sent_server";
                    return resp.json()

                } else {
                    console.log("Status: " + resp.status)
                    return Promise.reject("server")
                }
            })
            .then(dataJson => {
                dataReceived = JSON.parse(dataJson);
                console.log('ok')
                document.getElementById("div_loader_sending").classList.add('visually-hidden');
            })
            .catch(err => {
                if (err === "server") return
                console.log(err)
                document.getElementById("div_loader_sending").classList.add('visually-hidden');
            })

        console.log(`Received: ${dataReceived}`)


        //document.getElementById("submitBatchForm").submit();
    } else {
        // user clicked Cancel
    }
}