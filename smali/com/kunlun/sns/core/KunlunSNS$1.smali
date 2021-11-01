.class Lcom/kunlun/sns/core/KunlunSNS$1;
.super Ljava/lang/Object;
.source "KunlunSNS.java"

# interfaces
.implements Lcom/kunlun/sns/core/channel/IChannelInitializer$OnInitializeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/core/KunlunSNS;->initSDK(Landroid/app/Activity;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/core/KunlunSNS;

.field private final synthetic val$initResultListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/core/KunlunSNS;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/core/KunlunSNS$1;->this$0:Lcom/kunlun/sns/core/KunlunSNS;

    iput-object p2, p0, Lcom/kunlun/sns/core/KunlunSNS$1;->val$initResultListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 1
    .param p1, "errorBean"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS$1;->val$initResultListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    invoke-interface {v0, p1}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 212
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS$1;->this$0:Lcom/kunlun/sns/core/KunlunSNS;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kunlun/sns/core/KunlunSNS;->access$2(Lcom/kunlun/sns/core/KunlunSNS;Z)V

    .line 206
    iget-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS$1;->val$initResultListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    const-string v1, "SDK \u521d\u59cb\u5316\u6210\u529f."

    invoke-interface {v0, v1}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;->onSuccess(Ljava/lang/Object;)V

    .line 207
    return-void
.end method
