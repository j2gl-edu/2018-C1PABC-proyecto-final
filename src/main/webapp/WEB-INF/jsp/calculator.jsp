<!DOCTYPE html>
<html lang="en">
<head>
    <title>Calculator</title>
</head>
<body>

<h1>RPN Calculator</h1>
<form name="form1" action="/calculator" method="POST">
    <input name="expression" type="text" id="expression" /> 
    <button type="button" onclick="UserAction()">Calculate</button>
</form> 

<script>
    function UserAction() {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                alert(this.responseText);
            }
        };
        xhttp.open("POST", "/calculate", true);
        xhttp.setRequestHeader("Content-type", "application/json");
        xhttp.send();
    }
</script>
</body>
</html>
