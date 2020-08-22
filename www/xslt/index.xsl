<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:bs3="http://www.getbootstrap.com/3.3">
<xsl:output method="html"/>

<xsl:template match="review">
    <div class="col-md-3 text-center">
        <img class="img-circle" height="140" width="140"  src="{image}">
        </img>
        <h2><xsl:value-of select="./name"/></h2>
        <p><xsl:value-of select="./comment"/></p>
    </div>
</xsl:template>

<xsl:template match="about">
    <div class="panel panel-default">
        <div class="panel-body">
            <h3> מי אני? </h3>
            <div class="pre-line">
                <xsl:value-of select="."/>
            </div>
        </div>
    </div>
</xsl:template>

<xsl:template match="social-buttons">
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

        <xsl:template match="contact-form">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">יצירת קשר</div>
                </div>
                <div class="panel-body">
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
                </div>
            </div>
        </xsl:template>

        <xsl:template match="page" mode="navbar-item">
            <li>
                <a href="{@href}">
                    <xsl:value-of select="@title"/>
                </a>
            </li>
        </xsl:template>

        <xsl:template match="/site">
            <html>
                <head>
                    <meta charset="utf-8" />
                    <meta content="width=device-width, initial-scale=1" name="viewport" />
                    <title>הילה בורשטיין</title>
                    <link href="https://fonts.googleapis.com/earlyaccess/alefhebrew.css"
                    rel="stylesheet" type="text/css" />
                    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
                    <link href="css/site.css" rel="stylesheet" />
                </head>
                <body>
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand" href="#">הילה</a>
                            </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <xsl:apply-templates
                                    mode="navbar-item"
                                    />
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <div class="container">
                        <xsl:apply-templates select="page[@active='true']"/>
                    </div>
                </body>
            </html>
        </xsl:template>


    </xsl:stylesheet>
