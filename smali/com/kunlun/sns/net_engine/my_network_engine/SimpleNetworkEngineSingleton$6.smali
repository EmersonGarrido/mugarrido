.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestFileUpload(Ljava/lang/String;Ljava/util/Map;Lcom/loopj/android/http/RequestParams$FileWrapper;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

.field private final synthetic val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "statusCode"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 640
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<<<<<<<<<-----------  \u53d1\u8d77\u7684\u4e0a\u4f20\u6587\u4ef6\u8bf7\u6c42\u5931\u8d25    ----------->>>>>>>>>>\n\u72b6\u6001\u7801---> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u9519\u8bef\u539f\u56e0---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$2;

    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$2;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 650
    return-void
.end method

.method public onProgress(JJ)V
    .locals 0
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 655
    return-void
.end method

.method public onSuccess(Ljava/io/File;[B)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "responseBody"    # [B

    .prologue
    .line 626
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<<<<<<<<<<-----------  \u53d1\u8d77\u7684\u4e0a\u4f20\u6587\u4ef6\u8bf7\u6c42\u6210\u529f    ----------->>>>>>>>>>"

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;

    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;Ljava/io/File;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 636
    return-void
.end method
