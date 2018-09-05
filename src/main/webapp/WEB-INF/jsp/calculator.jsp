<!DOCTYPE html>
<html lang="en">
<head>
    <title>Calculator</title>
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

<script>
    function calculateExpression() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var obj = JSON.parse(this.responseText);
                document.getElementById('result').textContent = obj.result;
            }
        };
        xhttp.open("POST", "/calculator", true);
        xhttp.setRequestHeader("Content-type", "application/json");
        expression = document.getElementById('expression').value;        
        xhttp.send('{"expression":"' + expression + '"}');
    }
</script>
</body>
</html>
