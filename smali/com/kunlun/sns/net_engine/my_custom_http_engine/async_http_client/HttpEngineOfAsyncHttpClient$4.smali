.class Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$4;
.super Ljava/lang/Object;
.source "HttpEngineOfAsyncHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->buildAsyncHttpResponseHandler(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;)Lcom/loopj/android/http/AsyncHttpResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

.field private final synthetic val$asyncHttpResponseHandlerBuilder:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;

.field private final synthetic val$blockingQueue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;Ljava/util/concurrent/BlockingQueue;Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$4;->this$0:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$4;->val$blockingQueue:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$4;->val$asyncHttpResponseHandlerBuilder:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$4;->val$blockingQueue:Ljava/util/concurrent/BlockingQueue;

    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$4;->val$asyncHttpResponseHandlerBuilder:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;

    invoke-interface {v2}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient$AsyncHttpResponseHandlerBuilder;->build()Lcom/loopj/android/http/AsyncHttpResponseHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
