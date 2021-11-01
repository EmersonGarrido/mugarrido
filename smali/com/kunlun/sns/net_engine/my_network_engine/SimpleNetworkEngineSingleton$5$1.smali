.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;->onProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;

.field private final synthetic val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

.field private final synthetic val$tempBytesWritten:J

.field private final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;JJ)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;->this$1:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    iput-wide p3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;->val$tempBytesWritten:J

    iput-wide p5, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;->val$totalSize:J

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 578
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListenerOnProgressDoInUIThread;

    iget-wide v2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;->val$tempBytesWritten:J

    iget-wide v4, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5$1;->val$totalSize:J

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListenerOnProgressDoInUIThread;->onProgressDoInUIThread(JJ)V

    .line 579
    return-void
.end method
