.class public Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HttpRequestHandleOfAsyncHttpClient.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;


# instance fields
.field private isFinished:Z

.field private requestHandle:Lcom/loopj/android/http/RequestHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->isFinished:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/loopj/android/http/RequestHandle;)V
    .locals 1
    .param p1, "requestHandle"    # Lcom/loopj/android/http/RequestHandle;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->isFinished:Z

    .line 29
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->requestHandle:Lcom/loopj/android/http/RequestHandle;

    .line 30
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->requestHandle:Lcom/loopj/android/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    .line 49
    return-void
.end method

.method public idle()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->isFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->requestHandle:Lcom/loopj/android/http/RequestHandle;

    invoke-virtual {v0}, Lcom/loopj/android/http/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->requestHandle:Lcom/loopj/android/http/RequestHandle;

    invoke-virtual {v0}, Lcom/loopj/android/http/RequestHandle;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->isFinished:Z

    return v0
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 60
    return-void
.end method

.method public setFinished(Z)V
    .locals 0
    .param p1, "isFinished"    # Z

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->isFinished:Z

    .line 23
    return-void
.end method

.method public setRequestHandle(Lcom/loopj/android/http/RequestHandle;)V
    .locals 0
    .param p1, "requestHandle"    # Lcom/loopj/android/http/RequestHandle;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;->requestHandle:Lcom/loopj/android/http/RequestHandle;

    .line 36
    return-void
.end method
