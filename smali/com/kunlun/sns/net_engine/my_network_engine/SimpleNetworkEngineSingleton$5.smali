.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestFileDownlaod(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

.field private final synthetic val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    .line 549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    new-instance v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 558
    return-void
.end method

.method public onProgress(JJ)V
    .locals 9
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 562
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6587\u4ef6\u4e0b\u8f7d\u8fdb\u5ea6-->bytesWritten="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    if-eqz v0, :cond_1

    .line 565
    move-wide v4, p1

    .line 568
    .local v4, "tempBytesWritten":J
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    instance-of v0, v0, Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListenerOnProgressDoInBackground;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListenerOnProgressDoInBackground;

    invoke-interface {v0, v4, v5, p3, p4}, Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListenerOnProgressDoInBackground;->onProgressDoInBackground(JJ)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    instance-of v0, v0, Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListenerOnProgressDoInUIThread;

    if-eqz v0, :cond_1

    .line 574
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;

    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    move-object v2, p0

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 584
    .end local v4    # "tempBytesWritten":J
    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/io/File;[B)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "responseBody"    # [B

    .prologue
    .line 552
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    invoke-interface {v0, p1}, Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;->onSuccess(Ljava/io/File;)V

    .line 553
    return-void
.end method
