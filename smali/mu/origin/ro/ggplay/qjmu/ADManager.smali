.class public Lmu/origin/ro/ggplay/qjmu/ADManager;
.super Ljava/lang/Object;
.source "ADManager.java"


# static fields
.field static AF:Ljava/lang/String; = null

.field public static final LOG_TAG:Ljava/lang/String; = "AppsFlyerSampleApp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "AF"

    sput-object v0, Lmu/origin/ro/ggplay/qjmu/ADManager;->AF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFLev(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "lev"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public static AFPay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "Pay_coins"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float v1, v2, v3

    .line 55
    .local v1, "value":F
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .local v0, "eventValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "af_revenue"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v2, "af_currency"

    const-string v3, "USD"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "payment"

    invoke-virtual {v2, v3, v4, v0}, Lcom/appsflyer/AppsFlyerLib;->trackEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method public static CreateRole(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 28
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/ADManager$1;

    invoke-direct {v0, p0}, Lmu/origin/ro/ggplay/qjmu/ADManager$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method public static InitInfo(Landroid/app/Activity;)V
    .locals 5
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "962307603"

    const-string v2, "4qVWCPbnil8Qk8zuygM"

    const-string v3, "1.00"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "NzqMLQwdFNbKSXoortCXgN"

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->startTracking(Landroid/app/Application;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    new-instance v1, Lmu/origin/ro/ggplay/qjmu/ADManager$2;

    invoke-direct {v1, p0}, Lmu/origin/ro/ggplay/qjmu/ADManager$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V

    .line 127
    const-string v0, "55cc50a204b016378d91676e"

    const-string v1, "92a86e69fdf4fba0c337796753dd669812717df8"

    invoke-static {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 132
    return-void
.end method
