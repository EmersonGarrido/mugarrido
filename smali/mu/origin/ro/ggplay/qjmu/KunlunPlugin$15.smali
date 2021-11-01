.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$15;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->HideFaceBook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRespondBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 0
    .param p1, "errorBean"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 668
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRespondBean;)V
    .locals 0
    .param p1, "respondBean"    # Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRespondBean;

    .prologue
    .line 663
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 659
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRespondBean;

    invoke-virtual {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$15;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRespondBean;)V

    return-void
.end method
