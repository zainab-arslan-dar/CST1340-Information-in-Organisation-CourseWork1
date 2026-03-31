<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Book List</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #ffe5e7;
                        margin: 0;
                        padding: 0;
                        text-align: center;
                    }
                    nav {
                        background-color: #B1A2CA;
                        padding: 10px;
                        text-align: left;
                    }
                    nav a {
                        color: white;
                        text-decoration: none;
                        font-size: 18px;
                        margin: 0 15px;
                        font-weight: bold;
                    }
                    nav a:hover {
                        text-decoration: underline;
                    }
                    h1 {
                        color: #333;
                        margin-top: 20px;
                    }
                    table {
                        margin: 20px auto;
                        border-collapse: collapse;
                        width: 80%;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                        background-color: #fff;
                    }
                    th, td {
                        padding: 10px;
                        text-align: left;
                        border: 1px solid #ddd;
                    }
                    th {
                        background-color: #D2E0D3;
                        color: black;
                    }
                    tr {
                        background-color: #f2f2f2;
                    }
                    tr:hover {
                        background-color: #ddd;
                    }
                </style>
            </head>
            <body>
                <nav>
                    <a href="index.html">Back</a>
                </nav>
                <h1>Book List</h1>
                <table>
                    <tr>
                        <th>Genre</th>
                        <th>Subgenre</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Rating</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="bookshop/book">
                        <tr>
                            <td><xsl:value-of select="genre"/></td>
                            <td><xsl:value-of select="subgenre"/></td>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="rating"/></td>
                            <td><xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
