.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$3;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

.field private final synthetic val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$3;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$3;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$3;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    invoke-interface {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;->onBegin()V

    .line 489
    return-void
.end method
