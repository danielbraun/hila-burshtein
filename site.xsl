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

    <xsl:template match="featurette">
        <hr class="featurette-divider" />
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">
                    <xsl:value-of select="@heading"/>
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
                <div class="form-group" id="row-field-message">
                    <label class="control-label" for="field-message">הודעה</label>
                    <textarea class="form-control" id="field-message" name="message"></textarea>
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
                <link href="dist/site.css" rel="stylesheet" type="text/css" />
            </head>
            <body>
                <div class="container">
                    <div class="jumbotron">
                        <h1>הילה בורשטיין</h1>
                        <p>נטורופתיה ודיקור קוסמטי</p>
                        <p>
                            <button class="btn btn-primary btn-lg">לטיפול נסיון</button>
                        </p>
                    </div>
                    <div class="row">
                        <div class="col-md-8 about">
                            <xsl:value-of select="./about"/>
                        </div>
                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-body">

                                    <xsl:call-template name="contact-form"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <xsl:apply-templates select="featurette"/>
                    <hr class="featurette-divider" />
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
