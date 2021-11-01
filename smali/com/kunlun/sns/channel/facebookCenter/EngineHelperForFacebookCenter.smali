.class public Lcom/kunlun/sns/channel/facebookCenter/EngineHelperForFacebookCenter;
.super Ljava/lang/Object;
.source "EngineHelperForFacebookCenter.java"

# interfaces
.implements Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;


# instance fields
.field private final privateStrategyMapping:Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;

.field private final publicStrategyMapping:Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/EngineHelperForFacebookCenter;->publicStrategyMapping:Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;

    .line 58
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/EngineHelperForFacebookCenter;->privateStrategyMapping:Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;

    .line 24
    return-void
.end method


# virtual methods
.method public getDomainBeanRequestPublicParamsFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IDomainBeanRequestPublicParams;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;-><init>()V

    return-object v0
.end method

.method public getIChannelInitializer()Lcom/kunlun/sns/core/channel/IChannelInitializer;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterChannelInitializer;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterChannelInitializer;-><init>()V

    return-object v0
.end method

.method public getNetRequestParamsPackageFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/NetRequestParamsPackageForFacebookCenter;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/NetRequestParamsPackageForFacebookCenter;-><init>()V

    return-object v0
.end method

.method public getNetRespondEntityDataUnpackFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRespondRawEntityDataUnpack;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/NetRespondEntityDataUnpackForFacebookCenter;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/NetRespondEntityDataUnpackForFacebookCenter;-><init>()V

    return-object v0
.end method

.method public getNetWorkRequestBeanAndStrategyMapping()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/EngineHelperForFacebookCenter;->privateStrategyMapping:Lcom/kunlun/sns/channel/facebookCenter/NetWorkRequestBeanAndStrategyMappingForFacebookCenter;

    return-object v0
.end method

.method public getSdkCommandRequestBeanAndStrategyMapping()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/EngineHelperForFacebookCenter;->publicStrategyMapping:Lcom/kunlun/sns/channel/facebookCenter/SdkCommandRequestBeanAndStrategyMappingForFacebookCenter;

    return-object v0
.end method

.method public getSdkParams(Landroid/os/Bundle;)Lcom/kunlun/sns/core/channel/SdkParams;
    .locals 1
    .param p1, "configParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;

    invoke-direct {v0, p1}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public getServerRespondDataTestFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IServerResponseDataValidityTest;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/ServerRespondDataTestForFacebookCenter;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/ServerRespondDataTestForFacebookCenter;-><init>()V

    return-object v0
.end method

.method public getSpliceFullUrlByDomainBeanSpecialPathFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/ISpliceFullUrlByDomainBeanSpecialPath;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/SpliceFullUrlByDomainBeanSpecialPathForFacebookCenter;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/SpliceFullUrlByDomainBeanSpecialPathForFacebookCenter;-><init>()V

    return-object v0
.end method

.method public getUrlForChannel()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IUrlForChannel;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/UrlForFacebookCenter;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/UrlForFacebookCenter;-><init>()V

    return-object v0
.end method
