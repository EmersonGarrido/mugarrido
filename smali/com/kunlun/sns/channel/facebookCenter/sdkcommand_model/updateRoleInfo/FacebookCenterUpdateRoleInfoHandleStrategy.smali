.class public Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoHandleStrategy;
.super Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;
.source "FacebookCenterUpdateRoleInfoHandleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRespondBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 10
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoHandleStrategy;->requestBean:Ljava/lang/Object;

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;->getRoleInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRespondBean;

    invoke-direct {v1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRespondBean;-><init>()V

    invoke-virtual {p0, v1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoHandleStrategy;->onSdkSuccess(Ljava/lang/Object;)V

    .line 15
    return-void

    .line 10
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    .line 11
    .local v0, "item":Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;
    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v3

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoHandleStrategy;->requestBean:Ljava/lang/Object;

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;->getRoleInfos()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/kunlun/sns/core/channel/SdkParams;->setRoleInfo(Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;Ljava/lang/String;)V

    goto :goto_0
.end method
