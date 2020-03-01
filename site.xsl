<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:vcards="urn:ietf:params:xml:ns:vcard-4.0">
    <xsl:output method="html"/>
    <xsl:template match="review">
        <div class="col-md-4">
            <img class="img-circle" height="140" width="140" >
                <xsl:attribute name="src">
                    <xsl:value-of select="./image"/>
                </xsl:attribute>
            </img>
            <h2><xsl:value-of select="./name"/></h2>
            <p><xsl:value-of select="./comment"/></p>
        </div>
    </xsl:template>

    <xsl:template match="photo">
        <div class="col-xs-6 col-md-3">
            <a target="_blank" class="thumbnail">
                <xsl:attribute name="href">
                    <xsl:value-of select="@url"/>
                </xsl:attribute>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="@url"/>
                    </xsl:attribute>
                </img>
            </a>
        </div>
    </xsl:template>

    <xsl:template match="featurette">
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <xsl:value-of select="@heading"/>
                    <br/>
                    <span class="text-muted">
                        <xsl:value-of select="@secondary"/>
                    </span>
                </h2>
                <p class="lead">
                    <xsl:value-of select="."/>
                </p>
            </div>
            <div class="col-md-5">
                <img alt="500x500"
                    class="featurette-image img-responsive center-block" height="500" width="500" >
                    <xsl:attribute name="src">
                        <xsl:value-of select="@img"/>
                    </xsl:attribute>
                </img>
            </div>
        </div>
    </xsl:template>

    <xsl:template name="contact-form">
        <form class="form-shell" method="POST">
            <fieldset class="fieldset-name">
                <div class="form-group" id="row-field-name">
                    <label class="control-label" for="field-name">שם</label>
                    <input class="form-control" id="field-name" name="name" type="text" value="" />
                </div>
                <div class="form-group" id="row-field-tel">
                    <label class="control-label" for="field-tel">טלפון</label>
                    <input class="form-control" id="field-tel" name="tel" type="tel" value="" />
                </div>
            </fieldset>
            <fieldset class="fieldset-submit">
                <div class="form-group" id="row-field-submit">
                    <input class="form-control btn btn-primary" id="field-submit" name="submit" type="submit" value="שליחה" />
                </div>
            </fieldset>
        </form>
    </xsl:template>

    <xsl:template match="//vcards:vcard">
        <html>
            <head>
                <meta charset="utf-8" />
                <meta content="width=device-width, initial-scale=1" name="viewport" />
                <title>הילה בורשטיין</title>
                <link href="https://fonts.googleapis.com/earlyaccess/alefhebrew.css"
                    rel="stylesheet" type="text/css" />
                <link href="dist/bootstrap.css" rel="stylesheet" type="text/css" />
                <link href="https://getbootstrap.com/docs/3.4/examples/carousel/carousel.css" rel="stylesheet" type="text/css" />
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />
                <link href="site.css" rel="stylesheet" type="text/css" />
                <link rel="shortcut icon">
                    <xsl:attribute name="href">
                        <xsl:value-of select="./vcards:photo/vcards:uri"/>
                    </xsl:attribute>
                </link>
            </head>
            <body>
                <div class="container">
                    <h1 class="text-center">
                        <img class="img-circle" style="height: 3em;">
                            <xsl:attribute name="src">
                                <xsl:value-of select="./vcards:photo/vcards:uri"/>
                            </xsl:attribute>
                        </img>
                        <br/>
                        <xsl:value-of select="./vcards:fn" />
                        <br/>
                        <small>
                            <xsl:value-of select="./vcards:org" />
                        </small>
                    </h1>

                    <a href="./hila_burshtein.vcf"
                        class="btn btn-default">
                        הוספה לאנשי קשר
                        <span class="glyphicon glyphicon-user"/>
                    </a>

                    <xsl:text> </xsl:text>

                    <xsl:for-each select="./vcards:tel">
                        <xsl:variable name="number"
                            select="./vcards:text/text()"/>
                        <a class="btn btn-primary">
                            <xsl:attribute name="href">
                                tel:<xsl:value-of select="$number"/>
                            </xsl:attribute>
                            <xsl:value-of select="$number" />
                            <xsl:text> </xsl:text>
                            <span class="glyphicon glyphicon-earphone"/>
                        </a>
                    </xsl:for-each>



                    <div class="row">
                        <div class="col-md-8 ">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="pre-line">
                                        <xsl:value-of select="./vcards:note/vcards:text/text()"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-title">יצירת קשר</div>
                                </div>
                                <div class="panel-body">
                                    <xsl:call-template name="contact-form"/>
                                </div>
                            </div>
                            <a class="btn btn-block btn-social btn-facebook"
                                target="_blank"
                                href="https://www.facebook.com/Hila-Burshtein-162731901343398/">
                                <span class="fab fa-facebook"></span>
                                Hila Burshtein
                            </a>
                            <a class="btn btn-block btn-social btn-instagram"
                                target="_blank"
                                href="https://www.instagram.com/hila.burshtein/">
                                <span class="fab fa-instagram"></span>
                                hila.burshtein
                            </a>
                            <a class="btn btn-block btn-social btn-whatsapp"
                                target="_blank"
                                href="https://wa.me/15551234567?text=היי, מעוניינת בפרטים נוספים, נא לחזור אלי">
                                <span class="fab fa-whatsapp"></span>
                                054-580-0722
                            </a>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>
