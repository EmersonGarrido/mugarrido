.class Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;
.super Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpRequestHandleOfAsyncHttpClient;
.source "HttpEngineOfAsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->createUploadHttpResponseHandler(Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$fileUploadRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;->this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;->val$fileUploadRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    iput-object p3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;->val$file:Ljava/io/File;

    .line 285
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
    .line 295
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;->val$fileUploadRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    invoke-interface {v0, p1, p4}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;->onFailure(ILjava/lang/Throwable;)V

    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;->setFinished(Z)V

    .line 298
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "response"    # [B

    .prologue
    .line 288
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;->val$fileUploadRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;->val$file:Ljava/io/File;

    invoke-interface {v0, v1, p3}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;->onSuccess(Ljava/io/File;[B)V

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$6;->setFinished(Z)V

    .line 291
    return-void
.end method
