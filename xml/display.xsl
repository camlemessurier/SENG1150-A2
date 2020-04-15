<?xml version="1.0" encoding="utf-8" ?>

<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="businesses">
  <head>
    <meta charset="utf-8"></meta>
    <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
    <title>

        <xsl:if test="business/@businessType = 'lifeCoaching'">
          Life Coaching
        </xsl:if>

        <xsl:if test="business/@businessType = 'remedialMassage'">
          Remedial Massage
        </xsl:if>

    </title>
    <link rel="stylesheet" type="text/css" href="../style.css"></link>
  </head>

  <body>

    <!--- Navigation bar -->
    <div class="header">

      <ul>
        <li>
          <a href="../index.html">Home</a>
        </li>
        <li>
          <a href="lifeCoaching.xml">Life Coaching</a>
        </li>
        <li>
          <a href="remedialMassage.xml">Remedial Massage</a>
        </li>
        <li>
          <a href="../about_us.html">About Us</a>
        </li>
        <li>
          <a href="../contact.html">Contact Us</a>
          </li>
      </ul>
    </div>

    <!--- Welcome Bar -->
    <div class="title">

      <div class="centerTitle" id="Privacy" >
        <h1 style="color: white;">
          <xsl:if test="business/@businessType = 'lifeCoaching'">
            Life Coaching
          </xsl:if>
          <xsl:if test="business/@businessType = 'remedialMassage'">
            Remedial Massage
          </xsl:if>
        </h1>

      </div>

    </div>

    <!--- Content -->
    <div class="site" id="no_welcome">


      <div class="text" id="long_text">


        <xsl:apply-templates select="business"/>
      </div>








    </div>

    <!--- Copyright Section at the bottom -->
    <div id="footer" style="color: white">
      <div class="links">
        <a href="privacy_policy.html">Privacy Policy</a> - <a href="terms_and_conditions.html">Terms and Conditions</a>
      </div>
      <div class="copyright">
        Cam Le Messurier, camlemessurier@gmail.com
      </div>

    </div>

  </body>
</xsl:template>

<xsl:template match="business">
<h2><xsl:value-of select="name"/></h2>
<xsl:if test="logo">
  <img>
      <xsl:attribute name="src">
        <xsl:value-of select="logo"/>
      </xsl:attribute>
  </img>
</xsl:if>



<p>
  <xsl:if test="businessDescription">
    <xsl:value-of select="businessDescription"></xsl:value-of> <br></br>
  </xsl:if>

  URL: <xsl:value-of select="url"></xsl:value-of> <br></br>
  Address: <xsl:value-of select="address"></xsl:value-of> <br></br>
  Hours of Operation: <br></br>
  EST: <xsl:value-of select="yearFounded"></xsl:value-of> <br></br>
  Time: <xsl:value-of select="hoursOfOperation/time/open"></xsl:value-of> - <xsl:value-of select="hoursOfOperation/time/close"></xsl:value-of> <br></br>
  Day: <xsl:value-of select="hoursOfOperation/day/open"></xsl:value-of> - <xsl:value-of select="hoursOfOperation/day/close"></xsl:value-of> <br></br>
  In Home Serice: <br></br>
  Minimum Price: <xsl:value-of select="inHomeService/minimumPrice"></xsl:value-of> <br></br>
  Hourly Rate: <xsl:value-of select="inHomeService/hourlyPrice"></xsl:value-of> <br></br>
  <xsl:if test="review">
    Reviews:<br></br>
  </xsl:if>

  <xsl:for-each select="review">
  <xsl:value-of select="."></xsl:value-of> <br></br>
  </xsl:for-each>
  <br></br>
  <xsl:for-each select="picture">
    <img id="picture">
        <xsl:attribute name="src">
          <xsl:value-of select="."/>
        </xsl:attribute>
    </img>

  </xsl:for-each>
  <br></br>
</p>
</xsl:template>

</xsl:stylesheet>
