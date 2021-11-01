.class public Lcom/kunlun/sns/net_engine/image_loader/MyImageDownloader;
.super Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;
.source "MyImageDownloader.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/net_engine/image_loader/MyImageDownloader;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 6
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v4, p0, Lcom/kunlun/sns/net_engine/image_loader/MyImageDownloader;->TAG:Ljava/lang/String;

    const-string v5, "\u5f00\u59cb\u8bf7\u6c42\u56fe\u7247 -----> "

    invoke-static {v4, v5}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v4, p0, Lcom/kunlun/sns/net_engine/image_loader/MyImageDownloader;->TAG:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :try_start_0
    sget-object v4, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    invoke-virtual {v4}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getSharedAsyncHttpClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 38
    .local v3, "syncHttpClient":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 42
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 52
    .end local v1    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "syncHttpClient":Lorg/apache/http/client/HttpClient;
    :goto_0
    return-object v4

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/kunlun/sns/net_engine/image_loader/MyImageDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    throw v0

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/kunlun/sns/net_engine/image_loader/MyImageDownloader;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v4, 0x0

    goto :goto_0
.end method
