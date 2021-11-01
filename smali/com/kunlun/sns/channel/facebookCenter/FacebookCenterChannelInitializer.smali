.class public Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterChannelInitializer;
.super Ljava/lang/Object;
.source "FacebookCenterChannelInitializer.java"

# interfaces
.implements Lcom/kunlun/sns/core/channel/IChannelInitializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/app/Activity;Lcom/kunlun/sns/core/channel/IChannelInitializer$OnInitializeListener;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "onInitializeListener"    # Lcom/kunlun/sns/core/channel/IChannelInitializer$OnInitializeListener;

    .prologue
    .line 15
    :try_start_0
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->initLanguage(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->setLanguage()V

    .line 20
    invoke-interface {p2}, Lcom/kunlun/sns/core/channel/IChannelInitializer$OnInitializeListener;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "errorMsg":Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->TAG:Ljava/lang/String;

    const-string v4, "\u8bed\u8a00\u5305\u52a0\u8f7d\u5f02\u5e38,\u539f\u56e0 -----------------------------> "

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-object v3, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-direct {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>()V

    .line 28
    .local v1, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->setCode(I)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->setMsg(Ljava/lang/String;)V

    .line 30
    invoke-interface {p2, v1}, Lcom/kunlun/sns/core/channel/IChannelInitializer$OnInitializeListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    goto :goto_0

    .line 22
    .end local v1    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    .end local v2    # "errorMsg":Ljava/lang/String;
    :cond_0
    const-string v2, "\u672a\u77e5"

    goto :goto_1
.end method
