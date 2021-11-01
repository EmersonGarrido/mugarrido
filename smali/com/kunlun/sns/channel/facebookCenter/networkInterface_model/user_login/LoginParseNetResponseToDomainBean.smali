.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginParseNetResponseToDomainBean;
.super Ljava/lang/Object;
.source "LoginParseNetResponseToDomainBean.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;
    .locals 9
    .param p1, "netRespondData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 14
    .local v3, "respondJSONString":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "data"

    invoke-static {v6, v7}, Lcom/kunlun/sns/net_engine/toolutils/JSONTools;->safeJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "dataString":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "retmsg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    .local v4, "retMsgStr":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "retcode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    .local v5, "retcode":Ljava/lang/String;
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    const-class v7, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;

    invoke-virtual {v6, v0, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;

    .line 20
    .local v2, "loginNetRespondBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;
    invoke-virtual {v2, v5}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->setRetcode(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v4}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->setRetmsg(Ljava/lang/String;)V

    .line 23
    const-string v6, "kunlunSns"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "RETCODE:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v6, "kunlunSns"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loginBean"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->getExtButtons()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 32
    return-object v2

    .line 28
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    .line 29
    .local v1, "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
    const-string v7, "onOperationLayoutClick"

    iput-object v7, v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->methodName:Ljava/lang/String;

    goto :goto_0
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
    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginParseNetResponseToDomainBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;

    move-result-object v0

    return-object v0
.end method
