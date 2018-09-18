<!DOCTYPE html>
<html lang="en">
<head>
    <title>Calculator</title>
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>

<h1>RPN Calculator</h1>

<div>
    Experssion: <input name="expression" type="text" id="expression" size="30" /> 
    <button type="button" onclick="calculateExpression()" >Calculate</button>
</div>
<br/>
<div>
    <p>Result: <span style="font-weight: bold" id="result">&nbsp;</span></p>
</div>

<hr/>
<div>
    <h2>History <button type="button" onclick="refreshHistory()" >Refresh</button></h2>
    <ol id="historyList">
    </ol>
</div>
<div>
    <h2>Sorted History <button type="button" onclick="refreshHistory()" >Refresh</button></h2>
    <ol id="sortedHistoryList">
    </ol>
</div>

<script>
    function calculateExpression() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var obj = JSON.parse(this.responseText);
                document.getElementById('result').textContent = obj.result;
                refreshHistory();
            }
        };
        xhttp.open("POST", "/calculator", true);
        xhttp.setRequestHeader("Content-type", "application/json");
        expression = document.getElementById('expression').value;        
        xhttp.send('{"expression":"' + expression + '"}');
    }

    function clearList(elementId) {
        var list = document.getElementById(elementId);
        while (list.firstChild) {
            list.removeChild(list.firstChild);
        }
    }

    function refreshHistory() {
        getHistory();
        getSortedHistory();
    }

    function getHistory() {
        getList('/history', 'historyList');
    }

    function getSortedHistory() {
        getList('/history?order-by=experssion', 'sortedHistoryList');
    }

    function getList(uri, elementId) {
        clearList('historyList');
        clearList('sortedHistoryList');

        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var list = document.getElementById(elementId);
                var expressions = JSON.parse(this.responseText);

                var arrayLength = expressions.length;
                for (var i = 0; i < arrayLength; i++) {
                    listItem = document.createElement("li");
                    text = document.createTextNode(expressions[i]);
                    listItem.appendChild(text);
                    list.appendChild(listItem);

                }
            }
        };
        xhttp.open("GET", uri, true);
        xhttp.setRequestHeader("Content-type", "application/json");
        xhttp.send();
    }

    getHistory();
    getSortedHistory();
</script>
</body>
</html>
