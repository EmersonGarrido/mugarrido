.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsDomainBeanHelper;
.super Ljava/lang/Object;
.source "GetGamePropsDomainBeanHelper.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParseNetRequestBeanToDDStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsParseDomainBeanToDD;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsParseDomainBeanToDD;-><init>()V

    return-object v0
.end method

.method public getParseNetResponseDataToNetRespondBeanStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsParseNetResponseToDomainBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsParseNetResponseToDomainBean;-><init>()V

    return-object v0
.end method

.method public getSpecialPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "netRequestDomainBean"    # Ljava/lang/Object;

    .prologue
    .line 21
    const-string v0, "get_game_props"

    return-object v0
.end method
