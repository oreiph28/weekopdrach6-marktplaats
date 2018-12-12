<!DOCTYPE html>
<html>
<body>

<h1>The onclick Event</h1>

<p>The onclick event is used to trigger a function when an element is clicked on.</p>

<p>Click the button to trigger a function that will output "Hello World" in a p element with id="demo".</p>

<button onclick="myFunction()">Click me</button>

<img src="../../../images/linked.jpg" width="108" height="143" onclick="myFunction()" alt="" title="" />
<p id="demo"></p>


  <script>
function myFunction() {
 document.getElementById("demo").innerHTML = "Hello World";
 document.write('<img src="../../../images/linked.jpg" width="808" height="843" />');
}
</script>



<p id="demo"></p>
</body>
</html>
