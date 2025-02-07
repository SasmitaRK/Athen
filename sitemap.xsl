<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Digital Blueprint</title>
        <style type="text/css">
          /* Base Styling */
          body {
            background: #2c3e50;
            color: #ecf0f1;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
          }
          header {
            background: #34495e;
            padding: 20px;
            text-align: center;
            border-bottom: 2px solid #16a085;
          }
          header h1 {
            margin: 0;
            font-size: 2.5em;
            font-weight: bold;
          }
          header p {
            margin: 5px 0 0;
            font-size: 1.2em;
            font-style: italic;
            color: #bdc3c7;
          }
          .container {
            padding: 20px;
          }
          ul {
            list-style: none;
            padding: 0;
          }
          li {
            background: #34495e;
            margin: 10px 0;
            padding: 15px;
            border-radius: 5px;
            transition: background 0.3s ease;
          }
          li:hover {
            background: #16a085;
          }
          a {
            color: #ecf0f1;
            text-decoration: none;
            font-weight: bold;
          }
          .lastmod {
            font-size: 0.9em;
            color: #bdc3c7;
            margin-left: 10px;
          }
          footer {
            text-align: center;
            margin-top: 30px;
            font-size: 0.8em;
            color: #95a5a6;
          }
        </style>
      </head>
      <body>
        <header>
          <h1>Digital Blueprint</h1>
          <p>Where every URL tells a story—no corny bits included.</p>
        </header>
        <div class="container">
          <ul>
            <xsl:apply-templates select="s:urlset/s:url"/>
          </ul>
        </div>
        <footer>
          <p>Crafted with wit &amp; code. Not your average sitemap.</p>
        </footer>
      </body>
    </html>
  </xsl:template>
  
  <!-- Template to transform each URL node -->
  <xsl:template match="s:url">
    <li>
      <a href="{s:loc}">
        <xsl:value-of select="s:loc"/>
      </a>
      <xsl:if test="s:lastmod">
        <span class="lastmod">
          (Last modified: <xsl:value-of select="s:lastmod"/>)
        </span>
      </xsl:if>
    </li>
  </xsl:template>
  
</xsl:stylesheet>
