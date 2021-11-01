.class Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;
.super Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;
.source "HttpEngineOfAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->createAsyncHttpResponseHandler(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

.field private final synthetic val$domainBeanRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;->this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;->val$domainBeanRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;

    .line 262
    invoke-direct {p0}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "errorResponse"    # [B
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;->val$domainBeanRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;

    invoke-interface {v0, p0, p1, p4}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;ILjava/lang/Throwable;)V

    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;->setFinished(Z)V

    .line 275
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "response"    # [B

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;->val$domainBeanRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;

    invoke-interface {v0, p0, p3}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;->onSuccess(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;Ljava/lang/Object;)V

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$5;->setFinished(Z)V

    .line 268
    return-void
.end method
