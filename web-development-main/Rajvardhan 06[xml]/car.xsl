<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Template to match the root element of the XML -->
  <xsl:template match="/car">
    <html>
      <head>
        <title>Car Information</title>
        <style>
          table {
            width: 100%;
            border-collapse: collapse;
          }
          table, th, td {
            border: 1px solid black;
          }
          th {
            background-color: #f2f2f2;
            text-align: left;
            padding: 8px;
          }
          td {
            padding: 8px;
            text-align: left;
          }
        </style>
      </head>
      <body>
        <h2>Car Information</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Brand</th>
            <th>Year</th>
            <th>Color</th>
          </tr>

          <!-- Iterate through each 'type' element -->
          <xsl:for-each select="type">
            <tr>
              <!-- Display the ID attribute of the car -->
              <td><xsl:value-of select="@id"/></td>
              <!-- Display the name of the car -->
              <td><xsl:value-of select="name"/></td>
              <!-- Display the brand of the car -->
              <td><xsl:value-of select="brand"/></td>
              <!-- Display the year of the car -->
              <td><xsl:value-of select="year"/></td>
              <!-- Display the color of the car -->
              <td><xsl:value-of select="color"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
