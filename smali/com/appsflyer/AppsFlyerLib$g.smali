.class abstract Lcom/appsflyer/AppsFlyerLib$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "g"
.end annotation


# instance fields
.field private additionalParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appsFlyerDevKey:Ljava/lang/String;

.field protected ctxReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private currency:Ljava/lang/String;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private googlePublicKey:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private purchaseData:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2642
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$g;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$g;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2643
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$g;->ctxReference:Ljava/lang/ref/WeakReference;

    .line 2644
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$g;->appsFlyerDevKey:Ljava/lang/String;

    .line 2645
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$g;->googlePublicKey:Ljava/lang/String;

    .line 2646
    iput-object p6, p0, Lcom/appsflyer/AppsFlyerLib$g;->purchaseData:Ljava/lang/String;

    .line 2647
    iput-object p7, p0, Lcom/appsflyer/AppsFlyerLib$g;->price:Ljava/lang/String;

    .line 2648
    iput-object p8, p0, Lcom/appsflyer/AppsFlyerLib$g;->currency:Ljava/lang/String;

    .line 2649
    iput-object p9, p0, Lcom/appsflyer/AppsFlyerLib$g;->additionalParams:Ljava/util/HashMap;

    .line 2650
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$g;->signature:Ljava/lang/String;

    .line 2651
    iput-object p10, p0, Lcom/appsflyer/AppsFlyerLib$g;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2652
    return-void
.end method


# virtual methods
.method public abstract getUrl()Ljava/lang/String;
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 2655
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$g;->appsFlyerDevKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$g;->appsFlyerDevKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2746
    :cond_0
    :goto_0
    return-void

    .line 2661
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$g;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2662
    if-eqz v1, :cond_0

    .line 2665
    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib$g;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2666
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Lcom/appsflyer/h;->addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2668
    const-string v5, "app_id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2669
    const-string v5, "dev_key"

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$g;->appsFlyerDevKey:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2670
    const-string v5, "public-key"

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$g;->googlePublicKey:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2671
    const-string v5, "sig-data"

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$g;->purchaseData:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2672
    const-string v5, "signature"

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$g;->signature:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    const-string v5, "uid"

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    const-string v1, "advertiserId"

    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v5

    const-string v6, "advertiserId"

    invoke-virtual {v5, v6}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 2678
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2680
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/appsflyer/AppsFlyerLib$g;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2681
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2683
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v8, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 2685
    const-string v2, "Content-Length"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v8, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v8, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    const/16 v1, 0x2710

    invoke-virtual {v8, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2689
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2694
    :try_start_2
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2695
    :try_start_3
    invoke-virtual {v2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 2700
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 2704
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 2705
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$g;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-virtual {v1, v8}, Lcom/appsflyer/AppsFlyerLib;->readServerResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v7

    .line 2706
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v1

    invoke-virtual {v1, v4, v2, v7}, Lcom/appsflyer/h;->addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 2707
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 2709
    if-nez v1, :cond_2

    .line 2710
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 2713
    :cond_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2717
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2718
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 2733
    :catch_0
    move-exception v1

    move-object v9, v8

    move-object v8, v1

    .line 2734
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$2100()Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2735
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed Validate request + ex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 2736
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$g;->purchaseData:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$g;->price:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$g;->currency:Ljava/lang/String;

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$g;->additionalParams:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/AppsFlyerLib$g;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 2739
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2741
    if-eqz v9, :cond_4

    .line 2742
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2745
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$g;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 2699
    :catchall_0
    move-exception v1

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_5

    .line 2700
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    :cond_5
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2741
    :catchall_1
    move-exception v1

    :goto_5
    if-eqz v8, :cond_6

    .line 2742
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v1

    .line 2721
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2723
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_8

    .line 2724
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Validate response 200 ok: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 2726
    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 2727
    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$g;->purchaseData:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$g;->price:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$g;->currency:Ljava/lang/String;

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$g;->additionalParams:Ljava/util/HashMap;

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/AppsFlyerLib$g;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2741
    :goto_6
    if-eqz v8, :cond_4

    .line 2742
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 2730
    :cond_8
    :try_start_8
    const-string v1, "Failed Validate request"

    invoke-static {v1}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 2731
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$g;->purchaseData:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$g;->price:Ljava/lang/String;

    iget-object v5, p0, Lcom/appsflyer/AppsFlyerLib$g;->currency:Ljava/lang/String;

    iget-object v6, p0, Lcom/appsflyer/AppsFlyerLib$g;->additionalParams:Ljava/util/HashMap;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/appsflyer/AppsFlyerLib$g;->validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    .line 2741
    :catchall_2
    move-exception v1

    move-object v8, v3

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v8, v9

    goto :goto_5

    .line 2733
    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v9, v3

    goto/16 :goto_2

    .line 2699
    :catchall_4
    move-exception v1

    goto :goto_4
.end method

.method protected abstract validateCallback(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
