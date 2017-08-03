<%@page contentType="text/html" pageEncoding="utf-8"%>
<html>
<head>
    <title>CalcApp</title>
    <link rel="shortcut icon" type="image/png" href="https://cdn0.iconfinder.com/data/icons/finance-icons-rounded/110/Calculator-512.png" />
</head>
<body>
<body background="http://jolt.richmond.edu/files/2017/03/499117-tech-abstract-background.jpg" />
<font color="#dcdcdc">
    <center><h1>Welcome to simple Violetta's calculator! :) </h1>
        <p><h2>You can choose one of these operations : </h2></p>
        <h4><i><p>Addition (+), Subtraction (-), Multiplication (*), Division (/)</p></i></h4>
        <p><h2>Lets get started!</h2></p>
<form action="Result" method="post" name = "f">
    <table>
        <tr>
            <tb>
                First Number: <input type="text" name="t1"/>
            </tb>
        </tr>
        <tr>
            <td>
                <font color="#dcdcdc">
                    Second Number: <input type="text" name="t2" />
                </font>
            </td>
        </tr>
        <tr>
            <td>
                <select name="opr">
                    <option value="+">Addition (+)</option>
                    <option value="-">Subtraction (-)</option>
                    <option value="*">Multiplication (*)</option>
                    <option value="/">Division (/)</option>
                </select>
            </td>
        </tr>
        <tr><td><input type="submit" value="Get result!"></td></tr>
    </table>
</form>
</center>
</font>
</body>
</html>
