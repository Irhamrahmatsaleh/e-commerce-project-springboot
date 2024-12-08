<!--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
 <body>
  <h1>test page</h1>

   <%
   //String name=(String)request.getAttribute("name");
   //Integer id= (Integer)request.getAttribute("id");

   %>
   <h1>
    Name: ${name}, id= ${id}
   </h1>
   <hr>


      <c:forEach var="item" items="${marks }">
      <h1>${item }</h1>
      </c:forEach>












 </body>
</html> -->



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <!DOCTYPE html>
   <html lang="en">

   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Test Page</title>
      <style>
         body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 20px;
         }

         h1 {
            color: #333;
         }

         hr {
            border: 1px solid #ddd;
            margin: 20px 0;
         }

         .marks {
            margin: 10px 0;
         }

         .mark-item {
            padding: 5px 0;
         }
      </style>
   </head>

   <body>
      <h1>Test Page</h1>

      <h2>
         Name: ${name}, ID: ${id}
      </h2>
      <hr>

      <div class="marks">
         <h3>Marks:</h3>
         <c:forEach var="item" items="${marks}">
            <div class="mark-item">${item}</div>
         </c:forEach>
      </div>
   </body>

   </html>
