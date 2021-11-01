.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsParseNetResponseToDomainBean;
.super Ljava/lang/Object;
.source "GetAllFriendsParseNetResponseToDomainBean.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;
    .locals 19
    .param p1, "netRespondData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    move-object/from16 v16, p1

    check-cast v16, Ljava/lang/String;

    .line 16
    .local v16, "netRespondString":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .local v15, "jsonObject":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v3, "awardsList":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    const-string v2, "awards"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 20
    .local v12, "awards":Lorg/json/JSONArray;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 21
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v14, v2, :cond_1

    .line 33
    .end local v14    # "i":I
    :cond_0
    const-string v2, "request_friend_hint"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    .local v4, "request_friend_hint":Ljava/lang/String;
    const-string v2, "logo_url"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 35
    .local v5, "logo_url":Ljava/lang/String;
    const-string v2, "objectid"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    .local v9, "objectid":Ljava/lang/String;
    const-string v2, "request_dialog_title"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "request_dialog_title":Ljava/lang/String;
    const-string v2, "request_dialog_message"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "request_dialog_message":Ljava/lang/String;
    const-string v2, "retmsg"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, "retmsg":Ljava/lang/String;
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;

    invoke-direct/range {v2 .. v9}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 22
    .end local v4    # "request_friend_hint":Ljava/lang/String;
    .end local v5    # "logo_url":Ljava/lang/String;
    .end local v6    # "request_dialog_title":Ljava/lang/String;
    .end local v7    # "request_dialog_message":Ljava/lang/String;
    .end local v8    # "retmsg":Ljava/lang/String;
    .end local v9    # "objectid":Ljava/lang/String;
    .restart local v14    # "i":I
    :cond_1
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 24
    .local v11, "awardJson":Lorg/json/JSONObject;
    const-string v2, "prompt_img"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 25
    .local v17, "prompt_img":Ljava/lang/String;
    const-string v2, "bottom_img"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 26
    .local v13, "bottom_img":Ljava/lang/String;
    const-string v2, "prompt_msg"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 28
    .local v18, "prompt_msg":Ljava/lang/String;
    new-instance v10, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v13, v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v10, "award":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v14, v14, 0x1

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
    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsParseNetResponseToDomainBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;

    move-result-object v0

    return-object v0
.end method
