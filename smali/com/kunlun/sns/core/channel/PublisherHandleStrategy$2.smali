.class Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;
.super Ljava/lang/Object;
.source "PublisherHandleStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->onSdkFailure(Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

.field private final synthetic val$errorBean:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

.field private final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    iput-object p2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->val$errorBean:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    sget-object v0, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->getInstance:Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    iget-object v1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->val$tag:Ljava/lang/String;

    const-string v2, "onSdkFailure"

    iget-object v3, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->val$errorBean:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-virtual {v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->recordLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$1(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)V

    .line 122
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    iget-object v0, v0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->val$errorBean:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-interface {v0, v1}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-result-object v0

    instance-of v0, v0, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    invoke-interface {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;->onEnd()V

    goto :goto_0
.end method
