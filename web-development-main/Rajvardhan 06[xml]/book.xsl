<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Template to match the root of the XML document -->
  <xsl:template match="/bookstore">
    <html>
      <head>
        <title>Bookstore</title>
        <link rel="stylesheet" type="text/css" href="stylebook.css" />
      </head>
      <body>
        <h2>Books Available</h2>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Year</th>
            <th>Price</th>
          </tr>

          <!-- Iterate over each 'book' element -->
          <xsl:for-each select="book">
            <tr>
              <td><xsl:value-of select="title" /></td>
              <td><xsl:value-of select="author" /></td>
              <td><xsl:value-of select="year" /></td>
              <td><xsl:value-of select="price" /></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
