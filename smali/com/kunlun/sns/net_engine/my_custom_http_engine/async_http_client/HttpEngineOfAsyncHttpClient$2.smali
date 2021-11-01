.class Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;
.super Ljava/lang/Object;
.source "HttpEngineOfAsyncHttpClient.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->requestFileUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

.field private final synthetic val$fileRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

.field private final synthetic val$uploadFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;->this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;->val$uploadFile:Ljava/io/File;

    iput-object p3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;->val$fileRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/loopj/android/http/AsyncHttpResponseHandler;
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;->this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;->val$uploadFile:Ljava/io/File;

    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$2;->val$fileRequestAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->access$1(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v0

    return-object v0
.end method
