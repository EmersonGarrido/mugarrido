.class public abstract Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;
.super Ljava/lang/Object;
.source "PublisherHandleStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected handlerInMainLooper:Landroid/os/Handler;

.field protected requestBean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->releaseReferenceLooper()V

    return-void
.end method

.method private releaseReferenceLooper()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->requestBean:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->future:Ljava/util/concurrent/Future;

    .line 28
    iput-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    .line 29
    iput-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->handlerInMainLooper:Landroid/os/Handler;

    .line 30
    return-void
.end method


# virtual methods
.method protected logDebugMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "debugMsg"    # Ljava/lang/String;

    .prologue
    .line 135
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ----------------- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ----------------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ================= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ================= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    return-void
.end method

.method public onSdkFailure(Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "errorBean"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 100
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->handlerInMainLooper:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$2;-><init>(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    return-void
.end method

.method public onSdkFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 130
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    .line 131
    .local v0, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    invoke-virtual {p0, p1, v0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->onSdkFailure(Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 132
    return-void
.end method

.method public onSdkSuccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    .local p1, "respondBean":Ljava/lang/Object;, "TV;"
    const-string v0, "\u65e0JSON\u6570\u636e\u4f53"

    .line 61
    .local v0, "jsonString":Ljava/lang/String;
    instance-of v1, p1, Lcom/kunlun/sns/core/channel/IRespondDataTransform;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 62
    check-cast v1, Lcom/kunlun/sns/core/channel/IRespondDataTransform;

    invoke-interface {v1}, Lcom/kunlun/sns/core/channel/IRespondDataTransform;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ============ \u54cd\u5e94\u6a21\u578b"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ============ \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n ============ JSON\u6570\u636e\u4f53 ============ \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->handlerInMainLooper:Landroid/os/Handler;

    new-instance v2, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;

    invoke-direct {v2, p0, p1}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy$1;-><init>(Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public setDomainBeanAsyncHttpResponseListener(Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    .local p1, "domainBeanAsyncHttpResponseListener":Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;, "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener<TV;>;"
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    .line 48
    return-void
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->future:Ljava/util/concurrent/Future;

    .line 42
    return-void
.end method

.method public setHandlerInMainLooper(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handlerInMainLooper"    # Landroid/os/Handler;

    .prologue
    .line 53
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->handlerInMainLooper:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method public setNetRequestBean(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    .local p1, "netRequestBean":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->requestBean:Ljava/lang/Object;

    .line 36
    return-void
.end method
