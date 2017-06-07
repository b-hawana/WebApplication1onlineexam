<style>
header, footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
</style>
<%@include file="back.html" %>
<header>ONLINE EXAMINATION SYSTEM<br><br>Choose an Option and Submit</header>
<br><form action="admin2.jsp" method="post">
  <input type="radio" name="choice" value="Username">View record by User Name<br>
  <input type="radio" name="choice" value="Mobile">View a record by Mobile Number<br>
  <input type="radio" name="choice" value="Specific">Find all record attended a specific test.<br>
  <input type="radio" name="choice" value="Add">Add a Question<br>
  <input type="radio" name="choice" value="Update">Update a Question<br>
  <input type="radio" name="choice" value="Deleteq">Delete Question<br>
  <input type="radio" name="choice" value="Deleteu">Delete User<br>

  <input type="submit" value="Submit">
  </form>
<br><br><br><br><br><br><br><br><br><br><br><br><br><footer>Developed by: Dhruv Pandey & Amit Kumar Singh</footer>