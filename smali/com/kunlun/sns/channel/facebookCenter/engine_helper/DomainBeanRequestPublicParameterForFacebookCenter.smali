.class public Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;
.super Ljava/lang/Object;
.source "DomainBeanRequestPublicParameterForFacebookCenter.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IDomainBeanRequestPublicParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    .end local p1    # "param":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "param":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public getPublicParameter()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    sget-object v10, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v10}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kunlun/sns/core/channel/SdkParams;->getProductId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    .local v6, "productId":Ljava/lang/String;
    sget-object v10, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v10}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kunlun/sns/core/channel/SdkParams;->getServerID()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 27
    .local v8, "serverId":Ljava/lang/String;
    sget-object v10, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v10}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v10

    check-cast v10, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;

    invoke-virtual {v10}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->getFacebookId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "fbId":Ljava/lang/String;
    sget-object v10, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v10}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kunlun/sns/core/channel/SdkParams;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "devId":Ljava/lang/String;
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "klId":Ljava/lang/String;
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getKLSSO()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "klsso":Ljava/lang/String;
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getKLPERSON()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "klperson":Ljava/lang/String;
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLang()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->containLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "language":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v7, "publicParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "klid"

    invoke-interface {v7, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v10, "fbid"

    invoke-interface {v7, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v10, "devid"

    invoke-interface {v7, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v10, "productid"

    invoke-interface {v7, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v10, "serverid"

    invoke-interface {v7, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v10, "klsso"

    invoke-interface {v7, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v10, "version"

    sget-object v11, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v11}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kunlun/sns/core/channel/SdkParams;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v10, "klperson"

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v10, "roleid"

    sget-object v11, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v11}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v11

    invoke-virtual {v11}, Lcom/kunlun/sns/core/channel/SdkParams;->getRoleID()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v10, "rolename"

    sget-object v11, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v11}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v11

    sget-object v12, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_NAME:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    invoke-virtual {v11, v12}, Lcom/kunlun/sns/core/channel/SdkParams;->getRoleInfo(Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v10, "rolelevel"

    sget-object v11, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v11}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v11

    sget-object v12, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    invoke-virtual {v11, v12}, Lcom/kunlun/sns/core/channel/SdkParams;->getRoleInfo(Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v10, "rolescore"

    sget-object v11, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v11}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v11

    sget-object v12, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_POWER:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    invoke-virtual {v11, v12}, Lcom/kunlun/sns/core/channel/SdkParams;->getRoleInfo(Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v10, "vip"

    sget-object v11, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v11}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v11

    sget-object v12, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_VIP_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    invoke-virtual {v11, v12}, Lcom/kunlun/sns/core/channel/SdkParams;->getRoleInfo(Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v10, "klSdkVersion"

    const-string v11, "5.3.27"

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v10, "loaction"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v10, "sysVesion"

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v10, "deviceType"

    const-string v11, "Android"

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v10, "deviceModel"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v10, "language"

    invoke-interface {v7, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v10

    invoke-virtual {v10}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v10

    if-nez v10, :cond_0

    .line 62
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v10

    invoke-virtual {v10}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v9

    .line 63
    .local v9, "userToken":Ljava/lang/String;
    const-string v10, "usertoken"

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v9    # "userToken":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 65
    :cond_0
    const-string v10, "usertoken"

    const-string v11, ""

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
