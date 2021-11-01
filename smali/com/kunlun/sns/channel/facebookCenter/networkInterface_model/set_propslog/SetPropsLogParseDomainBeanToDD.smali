.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogParseDomainBeanToDD;
.super Ljava/lang/Object;
.source "SetPropsLogParseDomainBeanToDD.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetRequestBeanToDataDictionary(Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .param p1, "netRequestDomainBean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    if-nez p1, :cond_0

    .line 15
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "netRequestDomainBean is null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 18
    :cond_0
    instance-of v7, p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;

    if-nez v7, :cond_1

    .line 19
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\u4f20\u5165\u7684\u4e1a\u52a1Bean\u7684\u7c7b\u578b\u4e0d\u7b26 !"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move-object v6, p1

    .line 22
    check-cast v6, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;

    .line 23
    .local v6, "setPropsLogNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;
    invoke-virtual {v6}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->getSenderid()Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "senderid":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->getReceiverid()Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "receiverid":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->getActionid()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "actionid":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->getObjectid()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "objectid":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->getRequestid()Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "requestid":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 31
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "\u5fc5\u987b\u7684\u6570\u636e\u5b57\u6bb5\u4e0d\u5b8c\u6574 ! "

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 34
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "senderid"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v7, "receiverid"

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v7, "actionid"

    invoke-interface {v2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v7, "objectid"

    invoke-interface {v2, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v7, "requestid"

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object v2
.end method
