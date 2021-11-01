.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->onSuccess(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;

.field private final synthetic val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

.field private final synthetic val$netRequestIsCancelled:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;

.field private final synthetic val$requestBeanName:Ljava/lang/String;

.field private final synthetic val$respondDomainBean:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->this$1:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$netRequestIsCancelled:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;

    iput-object p3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    iput-object p4, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$respondDomainBean:Ljava/lang/Object;

    iput-object p5, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$requestBeanName:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$netRequestIsCancelled:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;

    invoke-interface {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$respondDomainBean:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;->onSuccess(Ljava/lang/Object;)V

    .line 420
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    instance-of v0, v0, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    invoke-interface {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;->onEnd()V

    .line 423
    :cond_1
    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->this$1:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;

    invoke-static {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->access$0(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;)Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<<<<<<<<<     \u53d1\u8d77\u7684 DomainBean ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;->val$requestBeanName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u7f51\u7edc\u8bf7\u6c42, \u5df2\u7ecf\u88ab\u53d6\u6d88    >>>>>>>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
