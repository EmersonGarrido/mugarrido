.class public Lcom/google/ads/conversiontracking/GoogleConversionPing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static recordConversionPing(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "isRepeatable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;->GOOGLE_CONVERSION:Lcom/google/ads/conversiontracking/GoogleConversionPing$ConversionType;

    if-ne p2, v0, :cond_0

    .line 65
    invoke-static {p0, p1, p3, p4, p5}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {p0, p1, p3, p4, p5}, Lcom/google/ads/conversiontracking/DoubleClickConversionReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static recordConversionPing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "isRepeatable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    return-void
.end method

.method public static recordRemarketingPing(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "conversionId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    .local p4, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 90
    if-nez p4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 91
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 93
    if-eqz p4, :cond_1

    .line 94
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    const-string v0, "screen_name"

    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v1

    .line 103
    :cond_3
    invoke-static {p0, p1, v0}, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    return-void
.end method

.method public static registerReferrer(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "clickUri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    invoke-static {p0, p1}, Lcom/google/ads/conversiontracking/AdWordsConversionReporter;->registerReferrer(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method
