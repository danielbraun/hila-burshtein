<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:bs3="http://www.getbootstrap.com/3.3">
<xsl:output method="html"/>

<xsl:variable name="site" select="document('../index.xml')/site"/>

<xsl:template match="review">
    <div class="col-sm-3 text-center">
        <img class="img-circle" height="100" width="100"  src="{image}">
        </img>
        <h2><xsl:value-of select="./name"/></h2>
        <p><xsl:value-of select="./comment"/></p>
    </div>
</xsl:template>

<xsl:template match="about">
    <div class="">
        <div class="">
            <div class="row">

                <div class="col-sm-6">
                    <div class="pre-line">
                        <xsl:value-of select="."/>
                    </div>
                </div>

                <div class="col-sm-6">
                    <br/>
                    <img class="pull-left img-thumbnail" width="100%" src="https://instagram.fhfa3-1.fna.fbcdn.net/v/t51.2885-15/e35/60638942_346556886051831_361278660949274717_n.jpg?_nc_ht=instagram.fhfa3-1.fna.fbcdn.net&amp;_nc_cat=103&amp;_nc_ohc=SJDuAj3V-lAAX8agTJP&amp;oh=4c3ebbbdd7dc3ad7e333abcd711dcd86&amp;oe=5F6AADC4"/>
                </div>
            </div>

        </div>
    </div>
</xsl:template>

<xsl:template match="social-buttons">
    <a class="btn btn-block btn-social btn-facebook"
    target="_blank"
    href="https://www.facebook.com/Hila-Burshtein-162731901343398/">
    <span class="fab fa-facebook"> </span>
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

        <xsl:template match="contact-sheet">
            <ul>
                <li>טלפון: <a href="tel:054-5800722">054-5800722</a></li>
                <li>דוא״ל: <a href="mailto:hila.burshtein@gmail.com">hila.burshtein@gmail.com</a></li>
                <li>אינסטגרם: <a target="_blank" href="https://www.instagram.com/hila.burshtein/">hila.burshtein</a></li>
                <li>פייסבוק: <a target="_blank" href="https://www.facebook.com/Hila-Burshtein-162731901343398/">Hila Burshtein</a></li>
            </ul>
        </xsl:template>

        <xsl:template match="contact-form">
            <div class="row">
                <div class="col-sm-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            יצירת קשר
                        </div>
                        <div class="panel-body">
                            <form class="form-shell" method="POST">
                                <fieldset disabled="true" class="fieldset-name">
                                    <div class="form-group" id="row-field-name">
                                        <label class="control-label" for="field-name">שם</label>
                                        <input class="form-control" id="field-name" name="name" type="text" value="" />
                                    </div>
                                    <div class="form-group" id="row-field-tel">
                                        <label class="control-label" for="field-tel">טלפון</label>
                                        <input class="form-control" id="field-tel" name="tel" type="tel" value="" />
                                    </div>
                                </fieldset>
                                <fieldset disabled="true" class="fieldset-submit">
                                    <div class="form-group" id="row-field-submit">
                                        <input class="form-control btn btn-primary" id="field-submit" name="submit" type="submit" value="שליחה" />
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </xsl:template>

        <xsl:template match="page" mode="navbar-item">
            <li>
                <a href="{@url}">
                    <xsl:value-of select="@title"/>
                    <xsl:value-of select="/@title"/>
                </a>

            </li>
        </xsl:template>

        <xsl:template name="navbar">

            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="about.xml">הילה</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <xsl:variable name="current-url" select="@url" />
                            <xsl:for-each select="$site/page">
                                <li>
                                    <xsl:attribute name="class">
                                        <xsl:choose>
                                            <xsl:when test="$current-url = @url">
                                                active
                                            </xsl:when>
                                        </xsl:choose>
                                    </xsl:attribute>
                                    <a href="{@url}">
                                        <xsl:value-of select="@title"/>
                                    </a>
                                </li>
                            </xsl:for-each>
                        </ul>
                    </div>
                </div>
            </nav>
        </xsl:template>

        <xsl:template match="treatments-content">
            <ul class="list-unstyled">
                <li>
                    <h3>תפריט תזונה</h3>
                    <dl class="dl-horizontal">
                        <dt> משך הטיפול </dt> <dd> 90 דקות </dd>
                        <dt>מחיר</dt> <dd>150 ש״ח</dd>
                        <dt>תיאור</dt>
                        <dd class="pre-text"> הגוף שלנו מורכב ממספר מערכות אשר מתפקדות כיחידה אחת.
                            לפעמים את שואלת את עצמך למה דווקא לי יש פצעונים או אקנה? למה דווקא לי יש פיגמנטציה וצלקות? איך זה שדווקא אצלי העור מתחיל להתקמט בגיל כל כך צעיר ובכלל, למה העור מתקמט?
                            התשובה נמצאת ממש בתוכך, מערכת העיכול הייחודית שלך, שלא דומה לשל אף אחת אחרת.
                            כנטורופתית וקוסמטיקאית הוליסטית אני מאמינה שעל מנת להעניק לך טיפול פנים איכותי ואפקטיבי
                            יש להזין ולאזן את עורך מבפנים מבחוץ, וכך נגיע לתוצאות טובות יותר.
                    </dd>

                </dl>

            </li>
            <li>
                <h3>טיפול פנים הוליסטי</h3>
                <dl class="dl-horizontal">
                    <dt> משך הטיפול </dt> <dd>90 דקות</dd>
                    <dt>מחיר</dt> <dd>250 ש״ח</dd>
                    <dt>תיאור</dt>
                    <dd class="pre-text"> טיפול פנים הוליסטי הוא טיפול שפותח על מנת לשפר את מראה ומרקם העור תוך התחשבות בשכבות העמוקות של העור והתייחסות מלאה לצרכיו האינדיבידואלים.
                        זהו טפול קוסמטי ייחודי, המציע הזדמנות להתחדשות פיסית ונפשית.
                        הטיפול כולו בעל איכויות מרגיעות ומלווה בעיסוי פנים ודקלוטה מפנק.
                        התוצאות של טיפול הפנים ניכרות מיד לאחר הטיפול  – עורך יהיה רך קורן ומלא חיים.

                </dd>

            </dl>

        </li>
        <li>
            <h3>דיקור קוסמטי</h3>
            <dl class="dl-horizontal">
                <dt> משך הטיפול </dt> <dd>כ-60 דקות</dd>
                <dt>מחיר</dt> <dd>150 ש"ח</dd>
                <dt>תיאור</dt>
                <dd class="pre-text">טיפול זה יחזק ויגמיש את שרירי פניך ובנוסף, הדיקור הקוסמטי אחראי על עידוד היצור הטבעי של סיבי הקולגן והאלסטין ולכן הוא ימצק ויטשטש את קמטי הבעה וקמטי הגיל ויעודד את עורך להיות יותר אלסטי ובעל מראה בריא וקורן.
                הטיפול כולל עיסוי פנים בכוסות רוח שישפר את זרימת הדם והספקת החמצן אל עורך.</dd>

        </dl>

    </li>
    <li> <h3>טיפול פנים הוליסטי משולב</h3>
        <dl class="dl-horizontal">
            <dt> משך הטיפול </dt> <dd>כ-120 דקות</dd>
            <dt>מחיר</dt> <dd>300 ש"ח</dd>
            <dt>תיאור</dt>
            <dd class="pre-text">טיפול זה משלב בין טיפול פנים הוליסטי לדיקור קוסמטי.</dd>
        </dl>

    </li>
    <li> <h3>ניקוי פנים עמוק</h3>
        <dl class="dl-horizontal">
            <dt> משך הטיפול </dt> <dd>כ120 דקות – 150 דקות</dd>
            <dt>מחיר</dt> <dd>300 ש"ח</dd>
            <dt>תיאור</dt>
            <dd class="pre-text">טיפול פנים זה ינקה ויטהר את נקבוביות עורך תוך כדי התחשבות בצרכיו המיוחדים, יסיר בעדינות את הקומודונים שהצטברו עליו ויותיר אותו נקי ואסתטי. </dd>

        </dl>

    </li>
</ul>
        </xsl:template>

        <xsl:template match="page">
            <html>
                <head>
                    <meta charset="utf-8" />
                    <meta content="width=device-width, initial-scale=1" name="viewport" />
                    <title>הילה בורשטיין - <xsl:value-of select="@title"/>
                    </title>
                    <link href="https://fonts.googleapis.com/earlyaccess/alefhebrew.css"
                    rel="stylesheet" type="text/css" />
                    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
                    <link href="css/site.css" rel="stylesheet" />
                </head>
                <body>
                    <xsl:call-template name="navbar"/>

                    <div class="container">
                        <div class="page-header">
                            <h1>
                                <xsl:value-of select="@title"/>
                            </h1>
                        </div>

                        <xsl:apply-templates />
                    </div>
                    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
                </body>
            </html>
        </xsl:template>

        <xsl:template match="/">
            <xsl:variable name="url" select="request/url" />
            <xsl:apply-templates select="$site/page[@url=$url]"/>
        </xsl:template>

    </xsl:stylesheet>
