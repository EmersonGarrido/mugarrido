.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsParseDomainBeanToDD;
.super Ljava/lang/Object;
.source "GetGamePropsParseDomainBeanToDD.java"

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
    .locals 8
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
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "netRequestDomainBean is null!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 18
    :cond_0
    instance-of v6, p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;

    if-nez v6, :cond_1

    .line 19
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "\u4f20\u5165\u7684\u4e1a\u52a1Bean\u7684\u7c7b\u578b\u4e0d\u7b26 !"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v1, p1

    .line 22
    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;

    .line 23
    .local v1, "gamePropsNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;
    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->getRequestid()Ljava/lang/String;

    move-result-object v4

    .line 24
    .local v4, "requestId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->getType()Ljava/lang/String;

    move-result-object v5

    .line 25
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->getReceiverid()Ljava/lang/String;

    move-result-object v3

    .line 26
    .local v3, "receiverId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->getActionid()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "actionId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 30
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "\u5fc5\u987b\u7684\u6570\u636e\u5b57\u6bb5\u4e0d\u5b8c\u6574 ! "

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 33
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 34
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "requestid"

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v6, "type"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v6, "receiverid"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v6, "actionid"

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v2
.end method
