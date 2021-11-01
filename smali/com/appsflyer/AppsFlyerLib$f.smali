.class final Lcom/appsflyer/AppsFlyerLib$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field private ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field isLaunch:Z

.field params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;

.field private urlString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 2269
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$f;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2270
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$f;->urlString:Ljava/lang/String;

    .line 2271
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    .line 2272
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2273
    iput-boolean p5, p0, Lcom/appsflyer/AppsFlyerLib$f;->isLaunch:Z

    .line 2274
    return-void
.end method

.method synthetic constructor <init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;ZLcom/appsflyer/AdvertisingIdClient;)V
    .locals 0

    .prologue
    .line 2258
    invoke-direct/range {p0 .. p5}, Lcom/appsflyer/AppsFlyerLib$f;-><init>(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2277
    .line 2280
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2282
    if-eqz v0, :cond_8

    .line 2283
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerProperties;->getReferrer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2284
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v6, "referrer"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 2286
    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v6, "referrer"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2288
    :cond_0
    const-string v1, "appsflyer-data"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2289
    const-string v1, "true"

    const-string v5, "sentSuccessfully"

    const-string v6, ""

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2290
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v6, "eventName"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2291
    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLib$f;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v9, "appsFlyerCount"

    if-nez v1, :cond_4

    move v6, v3

    :goto_0
    invoke-static {v8, v7, v9, v6}, Lcom/appsflyer/AppsFlyerLib;->access$700(Lcom/appsflyer/AppsFlyerLib;Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v6

    .line 2292
    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v9, "counter"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2293
    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v9, "iaecounter"

    iget-object v10, p0, Lcom/appsflyer/AppsFlyerLib$f;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v11, "appsFlyerInAppEventCount"

    if-eqz v1, :cond_5

    move v1, v3

    :goto_1
    invoke-static {v10, v7, v11, v1}, Lcom/appsflyer/AppsFlyerLib;->access$700(Lcom/appsflyer/AppsFlyerLib;Landroid/content/SharedPreferences;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2294
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v7, "timepassedsincelastlaunch"

    iget-object v8, p0, Lcom/appsflyer/AppsFlyerLib$f;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const/4 v9, 0x1

    invoke-static {v8, v0, v9}, Lcom/appsflyer/AppsFlyerLib;->access$800(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Z)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->isLaunch:Z

    if-eqz v0, :cond_1

    if-ne v6, v3, :cond_1

    .line 2297
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->setFirstLaunchCalled()V

    :cond_1
    move v0, v5

    .line 2300
    :goto_2
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v5, "isFirstCall"

    if-nez v0, :cond_6

    move v0, v3

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2302
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v1, "appsflyerKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2303
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 2304
    :cond_2
    const-string v0, "Not sending data yet, waiting for dev key"

    invoke-static {v0}, Lcom/appsflyer/a;->afDebugLog(Ljava/lang/String;)V

    .line 2326
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v6, v4

    .line 2291
    goto :goto_0

    :cond_5
    move v1, v4

    .line 2293
    goto :goto_1

    :cond_6
    move v0, v4

    .line 2300
    goto :goto_3

    .line 2308
    :cond_7
    new-instance v0, Lcom/appsflyer/f;

    invoke-direct {v0}, Lcom/appsflyer/f;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/appsflyer/f;->getHashCode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2309
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v4, "af_v"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2311
    new-instance v0, Lcom/appsflyer/f;

    invoke-direct {v0}, Lcom/appsflyer/f;-><init>()V

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/appsflyer/f;->getHashCodeV2(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2312
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    const-string v4, "af_v2"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->params:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2315
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$f;->urlString:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$f;->ctxReference:Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/appsflyer/AppsFlyerLib$f;->isLaunch:Z

    invoke-static/range {v0 .. v6}, Lcom/appsflyer/AppsFlyerLib;->access$900(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 2317
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2318
    const-string v0, "Exception while sending request to server. "

    invoke-static {v0, v1}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2319
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->ctxReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->urlString:Ljava/lang/String;

    const-string v3, "&isCachedRequest=true&timeincache="

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2320
    invoke-static {}, Lcom/appsflyer/cache/CacheManager;->getInstance()Lcom/appsflyer/cache/CacheManager;

    move-result-object v3

    new-instance v4, Lcom/appsflyer/cache/RequestCacheData;

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->urlString:Ljava/lang/String;

    sget-object v5, Lcom/appsflyer/AppsFlyerLib;->SDK_BUILD_NUMBER:Ljava/lang/String;

    invoke-direct {v4, v0, v2, v5}, Lcom/appsflyer/cache/RequestCacheData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$f;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/appsflyer/cache/CacheManager;->cacheRequest(Lcom/appsflyer/cache/RequestCacheData;Landroid/content/Context;)V

    .line 2321
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2323
    :catch_1
    move-exception v0

    .line 2324
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_8
    move v0, v4

    goto/16 :goto_2
.end method
