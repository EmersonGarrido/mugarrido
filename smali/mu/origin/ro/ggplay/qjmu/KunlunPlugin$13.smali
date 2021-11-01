.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$13;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->setRoleInfo(Landroid/app/Activity;Ljava/lang/String;)V
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
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRespondBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$13;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 0
    .param p1, "errorBean"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 613
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRespondBean;)V
    .locals 1
    .param p1, "respondBean"    # Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRespondBean;

    .prologue
    .line 607
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$13;->val$act:Landroid/app/Activity;

    invoke-static {v0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->showFaceBook(Landroid/app/Activity;)V

    .line 608
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 603
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRespondBean;

    invoke-virtual {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$13;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRespondBean;)V

    return-void
.end method
