.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsParseNetResponseToDomainBean;
.super Ljava/lang/Object;
.source "GetGamePropsParseNetResponseToDomainBean.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;
    .locals 4
    .param p1, "netRespondData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 13
    .local v1, "netRespondString":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;

    const-string v3, "retmsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsParseNetResponseToDomainBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;

    move-result-object v0

    return-object v0
.end method
