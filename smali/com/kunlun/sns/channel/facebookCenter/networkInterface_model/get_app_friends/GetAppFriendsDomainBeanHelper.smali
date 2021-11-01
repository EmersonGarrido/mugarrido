.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsDomainBeanHelper;
.super Ljava/lang/Object;
.source "GetAppFriendsDomainBeanHelper.java"

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
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsParseDomainBeanToDD;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsParseDomainBeanToDD;-><init>()V

    return-object v0
.end method

.method public getParseNetResponseDataToNetRespondBeanStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsParseNetResponseToDomainBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsParseNetResponseToDomainBean;-><init>()V

    return-object v0
.end method

.method public getSpecialPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "netRequestDomainBean"    # Ljava/lang/Object;

    .prologue
    .line 21
    const-string v0, "get_app_friends"

    return-object v0
.end method
