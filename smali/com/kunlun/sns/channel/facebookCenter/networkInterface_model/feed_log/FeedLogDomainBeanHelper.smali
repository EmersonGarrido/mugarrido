.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogDomainBeanHelper;
.super Ljava/lang/Object;
.source "FeedLogDomainBeanHelper.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParseNetRequestBeanToDDStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogParseDomainBeanToDD;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogParseDomainBeanToDD;-><init>()V

    return-object v0
.end method

.method public getParseNetResponseDataToNetRespondBeanStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogParseNetResponseToDomainBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogParseNetResponseToDomainBean;-><init>()V

    return-object v0
.end method

.method public getSpecialPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "netRequestDomainBean"    # Ljava/lang/Object;

    .prologue
    .line 22
    const-string v0, "feed_log"

    return-object v0
.end method
