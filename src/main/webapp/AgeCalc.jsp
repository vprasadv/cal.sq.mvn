<%@ page import="calc.calc.sq.mvn.AgeCalc"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<p class=banner>Calculators</p>
<button class="tablink" onclick="openPage('SimpleCalculator', this, 'orange')" >Simple Calculator</button>
<button class="tablink" onclick="openPage('AgeCalculator', this, 'orange')" id="defaultOpen">Age Calculator</button>
<button class="tablink" onclick="openPage('EMICalculator', this, 'orange')" >EMI Calculator</button>

<div id="SimpleCalculator" class="tabcontent">
<table class=tableclass>
<tr>
<td>
<h1 class=alignmiddle> Simple Calculator</h1>
<form method="post" action="SimpleCalc.jsp">
Number 1 : <input type="text" name="num1" class="alignright"> <br/><br/>
Number 2 : <input type="text" name="num2" class="alignright"> <br/><br/>
Operator :


<br/><br/>
<input type="radio" name="r1" value="Add" checked="checked">+ (Addition)<br/>	
<input type="radio" name="r1" value="Sub">- (Subtraction)<br/>
<input type="radio" name="r1" value="Mul">* (Multiplication)	<br/>
<input type="radio" name="r1" value="Div">/ (Division)<br/><br/>
<input type="submit" value="Calculate">
</form>
</td>
</tr>
</table>

</div>

<div id="AgeCalculator" class="tabcontent">
<table class=tableclass>
<tr>
<td>
<h1 class=alignmiddle> Age Calculator</h1>
<form method="post" action="AgeCalc.jsp">
Enter the Date of birth : <input type="date" name="dob" class="alignright"> <br/><br/>
<%@page language="java"%>
<%
try {
	String date1 = request.getParameter("dob");
	String result = AgeCalc.calculateAge(date1);
	out.println("<span>"+result+"</span><br/><br/>");
	
} catch(java.time.DateTimeException e) {
	out.println("<span class=spancontent>"+e.getMessage()+"</span><br/><br/>"); 
}
catch(Exception e){
	out.println("<span class=spancontent>Something went wrong... Try Again...</span><br/><br/>");
}
%>
<input type="submit" value="Calculate Age">
</form>
</td>
</tr>
</table>
</div>
<div id="EMICalculator" class="tabcontent">
<table class=tableclass>
<tr>
<td>
<h1 class=alignmiddle> EMI Calculator</h1>
<form method="post" action="EMICalc.jsp">
<table border=0 cellspacing=15px>
<tr>
<td>Enter the Loan Amount</td><td> : </td> <td> <input type="text" name="LoanAmt" class="alignright"> </td></tr>
<tr>
<td>Enter the Installments (in Months)</td><td> : </td> <td><input type="text" name="Installments" class="alignright"> </td></tr>
<tr>
<td>Enter the Rate of Interest</td><td> : </td> <td><input type="text" name="ROI" class="alignright"> </td></tr>
</table>
<input type="submit" value="Calculate EMI">
</form>
</td>
</tr>
</table>
<br/><br/>

</div>
<script>

 function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;

}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();

</script>
     
</body>
</html> 
