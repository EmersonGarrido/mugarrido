.class Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;
.super Ljava/lang/Object;
.source "PublisherHandleStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->onSdkSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

.field private final synthetic val$respondBean:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    iput-object p2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->val$respondBean:Ljava/lang/Object;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    iget-object v2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v2}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 93
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v2}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$1(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)V

    .line 94
    :goto_1
    return-void

    .line 74
    :cond_1
    iget-object v2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    iget-object v2, v2, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->future:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v2}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->val$respondBean:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_2
    iget-object v2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v2}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-result-object v2

    instance-of v2, v2, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    invoke-static {v2}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-result-object v2

    check-cast v2, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    invoke-interface {v2}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;->onEnd()V

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_RespondBeanClassCastEception:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v2

    .line 79
    sget-object v3, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_RespondBeanClassCastEception:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-direct {v1, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    .line 80
    .local v1, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    iget-object v2, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;->this$0:Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->onSdkFailure(Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    goto :goto_1
.end method
