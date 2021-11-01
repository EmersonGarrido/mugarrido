.class public Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;
.super Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/AbstractRequestBeanAndStrategyBeanMapping;
.source "SdkCommandRequestBeanAndStrategyMappingForFacebookCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/AbstractRequestBeanAndStrategyBeanMapping;-><init>()V

    .line 17
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideHandleStrategy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;->kvMapping:Ljava/util/Map;

    const-class v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoHandleStrategy;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    return-void
.end method
