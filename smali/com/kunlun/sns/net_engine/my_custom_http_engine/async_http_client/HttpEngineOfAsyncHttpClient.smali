.class public Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;
.super Ljava/lang/Object;
.source "HttpEngineOfAsyncHttpClient.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IHttpRequestForDomainBean;
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IHttpRequestForFile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

.field private mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->mainHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    .line 39
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {}, Lcom/loopj/android/http/MySSLSocketFactory;->getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V

    .line 40
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-static {}, Lcom/kunlun/sns/net_engine/toolutils/ToolsFunctionForThisProgect;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setUserAgent(Ljava/lang/String;)V

    .line 57
    const-class v0, Ljava/io/IOException;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->allowRetryExceptionClass(Ljava/lang/Class;)V

    .line 58
    const-class v0, Ljava/net/SocketTimeoutException;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->allowRetryExceptionClass(Ljava/lang/Class;)V

    .line 59
    const-class v0, Lorg/apache/http/conn/ConnectTimeoutException;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->allowRetryExceptionClass(Ljava/lang/Class;)V

    .line 67
    const-class v0, Ljava/net/UnknownHostException;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->blockRetryExceptionClass(Ljava/lang/Class;)V

    .line 68
    const-class v0, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->blockRetryExceptionClass(Ljava/lang/Class;)V

    .line 71
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.allow-circular-redirects"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->createAsyncHttpResponseHandler(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->createUploadHttpResponseHandler(Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method private buildAsyncHttpResponseHandler(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 7
    .param p1, "asyncHttpResponseHandlerBuilder"    # Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;

    .prologue
    .line 218
    const/4 v4, 0x0

    .line 220
    .local v4, "responseHandler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 221
    .local v2, "currentLooper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v5, v2, :cond_0

    .line 226
    invoke-interface {p1}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;->build()Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v4

    .line 255
    :goto_0
    return-object v4

    .line 233
    :cond_0
    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 235
    .local v1, "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/loopj/android/http/AsyncHttpResponseHandler;>;"
    iget-object v5, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->mainHandler:Landroid/os/Handler;

    new-instance v6, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$4;

    invoke-direct {v6, p0, v1, p1}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$4;-><init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Ljava/util/concurrent/BlockingQueue;Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v3

    .line 251
    .local v3, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private createAsyncHttpResponseHandler(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .param p1, "domainBeanRequestAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;

    .prologue
    .line 262
    new-instance v0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;-><init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)V

    .line 278
    .local v0, "responseHandler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    return-object v0
.end method

.method private createUploadHttpResponseHandler(Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileUploadRequestAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    .prologue
    .line 285
    new-instance v0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;-><init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;Ljava/io/File;)V

    .line 301
    .local v0, "responseHandler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    return-object v0
.end method


# virtual methods
.method public requestDomainBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p3, "requestParams"    # Ljava/lang/Object;
    .param p4, "domainBeanRequestAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;

    .prologue
    .line 83
    new-instance v3, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$1;

    invoke-direct {v3, p0, p4}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$1;-><init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)V

    invoke-direct {p0, v3}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->buildAsyncHttpResponseHandler(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v2

    .line 95
    .local v2, "responseHandler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    const/4 v1, 0x0

    .line 96
    .local v1, "requestHandle":Lcom/loopj/android/http/RequestHandle;
    const-string v3, "POST"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->TAG:Ljava/lang/String;

    const-string v4, ">>>>> \u5f00\u59cb\u6267\u884cPOST\u8bf7\u6c42 <<<<<"

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v4, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    move-object v3, p3

    check-cast v3, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {v4, p1, v3, v2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v1

    .line 106
    :goto_0
    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->TAG:Ljava/lang/String;

    const-string v4, "url\u5982\u4e0b --------------->"

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->TAG:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->TAG:Ljava/lang/String;

    const-string v4, "requestParams\u5982\u4e0b --------------->"

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->TAG:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 114
    check-cast v0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;

    .line 115
    .local v0, "httpRequestHandleOfAsyncHttpClient":Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;
    invoke-virtual {v0, v1}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->setRequestHandle(Lcom/loopj/android/http/RequestHandle;)V

    .line 116
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->setFinished(Z)V

    .line 118
    return-object v0

    .line 101
    .end local v0    # "httpRequestHandleOfAsyncHttpClient":Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;
    :cond_0
    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->TAG:Ljava/lang/String;

    const-string v4, ">>>>> \u5f00\u59cb\u6267\u884cGET\u8bf7\u6c42 <<<<<"

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    move-object v3, p3

    check-cast v3, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {v4, p1, v3, v2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v1

    goto :goto_0
.end method

.method public requestFileDownload(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isNeedContinuingly"    # Z
    .param p3, "requestMethod"    # Ljava/lang/String;
    .param p4, "requestParams"    # Ljava/lang/Object;
    .param p5, "downLoadFile"    # Ljava/io/File;
    .param p6, "fileRequestAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    .prologue
    .line 152
    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "\u6587\u4ef6\u8bf7\u6c42 : sendHttpRequest->url="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",requestMethod="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ",requestParams="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "\u5165\u53c2\u4e3a\u7a7a."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_0
    const/4 v7, 0x0

    .line 160
    .local v7, "requestHandle":Lcom/loopj/android/http/RequestHandle;
    const-wide/16 v4, 0x0

    .line 161
    .local v4, "seekPos":J
    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v3, "Range"

    invoke-virtual {v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->removeHeader(Ljava/lang/String;)V

    .line 162
    if-eqz p2, :cond_2

    .line 164
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    const-string v3, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 174
    :cond_1
    :goto_0
    :try_start_0
    new-instance v1, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$3;

    move-object v2, p0

    move-object v3, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$3;-><init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Ljava/io/File;JLcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)V

    .line 192
    .local v1, "fileAsyncHttpResponseHandler":Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;
    const-string v2, "POST"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    check-cast p4, Lcom/loopj/android/http/RequestParams;

    .end local p4    # "requestParams":Ljava/lang/Object;
    invoke-virtual {v2, p1, p4, v1}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 201
    .end local v1    # "fileAsyncHttpResponseHandler":Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;
    :goto_1
    new-instance v2, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;

    invoke-direct {v2, v7}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;-><init>(Lcom/loopj/android/http/RequestHandle;)V

    return-object v2

    .line 170
    .restart local p4    # "requestParams":Ljava/lang/Object;
    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 195
    .restart local v1    # "fileAsyncHttpResponseHandler":Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    check-cast p4, Lcom/loopj/android/http/RequestParams;

    .end local p4    # "requestParams":Ljava/lang/Object;
    invoke-virtual {v2, p1, p4, v1}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1

    .line 197
    .end local v1    # "fileAsyncHttpResponseHandler":Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public requestFileUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p3, "requestParams"    # Ljava/lang/Object;
    .param p4, "uploadFile"    # Ljava/io/File;
    .param p5, "fileRequestAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    .prologue
    .line 127
    new-instance v3, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;

    invoke-direct {v3, p0, p4, p5}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;-><init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)V

    invoke-direct {p0, v3}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->buildAsyncHttpResponseHandler(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v2

    .line 135
    .local v2, "responseHandler":Lcom/loopj/android/http/AsyncHttpResponseHandler;
    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    check-cast p3, Lcom/loopj/android/http/RequestParams;

    .end local p3    # "requestParams":Ljava/lang/Object;
    invoke-virtual {v3, p1, p3, v2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v1

    .line 140
    .local v1, "requestHandle":Lcom/loopj/android/http/RequestHandle;
    new-instance v0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;

    invoke-direct {v0, v1}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;-><init>(Lcom/loopj/android/http/RequestHandle;)V

    .line 141
    .local v0, "httpRequestHandleOfAsyncHttpClient":Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->setFinished(Z)V

    .line 143
    return-object v0
.end method
