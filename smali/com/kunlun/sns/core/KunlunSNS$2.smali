.class Lcom/kunlun/sns/core/KunlunSNS$2;
.super Ljava/lang/Object;
.source "KunlunSNS.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$errorBean:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

.field private final synthetic val$initResultListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/core/KunlunSNS;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/core/KunlunSNS$2;->this$0:Lcom/kunlun/sns/core/KunlunSNS;

    iput-object p2, p0, Lcom/kunlun/sns/core/KunlunSNS$2;->val$initResultListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    iput-object p3, p0, Lcom/kunlun/sns/core/KunlunSNS$2;->val$errorBean:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS$2;->val$initResultListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    iget-object v1, p0, Lcom/kunlun/sns/core/KunlunSNS$2;->val$errorBean:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-interface {v0, v1}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 228
    return-void
.end method
