<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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

    <xsl:template match="site">
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
            </head>
            <body>
                <div class="container">

                    <div class="panel panel-default">

                        <img src="images/hila_logo.png" class="logo"/>
                    </div>
                    <div class="row">
                        <div class="col-md-8 ">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <h3> מי אני? </h3>
                                    <div class="pre-line">
                                        <xsl:value-of select="./about"/>
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

                    <div class="row">
                    </div>

                    <hr class="featurette-divider"/>
                    <xsl:apply-templates select="//featurette"/>
                    <hr class="featurette-divider"/>


                    <h2>ממליצים עלי</h2>
                    <div class="row">
                        <xsl:for-each select="//treatment">
                            <div class="col-md-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <xsl:value-of select="@name"/>
                                    </div>
                                    <div class="panel-body pre-line">
                                        <xsl:value-of select="."/>
                                    </div>
                                </div>
                            </div>
                    </xsl:for-each></div>
                    <hr/>
                    <div class="text-center">
                        <div class="row">
                            <xsl:apply-templates select="document('dist/reviews.xml')/reviews/review"/>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>


</xsl:stylesheet>
