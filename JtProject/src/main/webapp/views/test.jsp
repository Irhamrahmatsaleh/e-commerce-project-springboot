<%@ page import="java.sql.*" %>
  <%@ page import="java.util.*" %>
    <%@ page import="java.text.*" %>
      <%@ page import="org.apache.commons.text.StringEscapeUtils" %>

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

            .friends-list {
              list-style: none;
              padding: 0;
            }

            .friends-list li {
              background: #f4f4f4;
              margin: 5px 0;
              padding: 10px;
              border-radius: 5px;
            }
          </style>
        </head>

        <body>
          <h1>Test Page</h1>
          <% String author=(String) request.getAttribute("author"); Integer id=(Integer) request.getAttribute("id");
            List<String> friends = (List<String>) request.getAttribute("f");
              %>
              <h2>Author Name: <%= StringEscapeUtils.escapeHtml4(author) %>
              </h2>
              <h2>ID: <%= id %>
              </h2>

              <h3>Friends List:</h3>
              <ul class="friends-list">
                <% if (friends !=null && !friends.isEmpty()) { %>
                  <% for (String friend : friends) { %>
                    <li>
                      <%= StringEscapeUtils.escapeHtml4(friend) %>
                    </li>
                    <% } %>
                      <% } else { %>
                        <li>No friends available</li>
                        <% } %>
              </ul>
        </body>

        </html>
