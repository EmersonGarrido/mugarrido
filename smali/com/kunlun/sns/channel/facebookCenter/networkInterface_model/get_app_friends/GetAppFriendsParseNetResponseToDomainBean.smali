.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsParseNetResponseToDomainBean;
.super Ljava/lang/Object;
.source "GetAppFriendsParseNetResponseToDomainBean.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;
    .locals 35
    .param p1, "netRespondData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 15
    move-object/from16 v32, p1

    check-cast v32, Ljava/lang/String;

    .line 17
    .local v32, "netRespondString":Ljava/lang/String;
    new-instance v31, Lorg/json/JSONObject;

    invoke-direct/range {v31 .. v32}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v31, "jsonObject":Lorg/json/JSONObject;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v13, "appFriendsItemBeansList":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;>;"
    const-string v12, "data"

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 22
    .local v24, "appFriendsItemBeans":Lorg/json/JSONArray;
    if-eqz v24, :cond_0

    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_0

    .line 23
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v12

    move/from16 v0, v30

    if-lt v0, v12, :cond_2

    .line 39
    .end local v30    # "i":I
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v14, "awardsList":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    const-string v12, "awards"

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    .line 41
    .local v28, "awards":Lorg/json/JSONArray;
    if-eqz v28, :cond_1

    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 42
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_1
    invoke-virtual/range {v28 .. v28}, Lorg/json/JSONArray;->length()I

    move-result v12

    move/from16 v0, v30

    if-lt v0, v12, :cond_3

    .line 54
    .end local v30    # "i":I
    :cond_1
    new-instance v12, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;

    const-string v15, "logo_url"

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "more_url"

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "friend_circle_title_hint"

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 55
    const-string v18, "objectid"

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "request_dialog_title"

    move-object/from16 v0, v31

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "request_dialog_message"

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "askfor_dialog_title"

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 56
    const-string v22, "askfor_dialog_message"

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "retmsg"

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 54
    invoke-direct/range {v12 .. v23}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    .line 24
    .end local v14    # "awardsList":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    .end local v28    # "awards":Lorg/json/JSONArray;
    .restart local v30    # "i":I
    :cond_2
    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v25

    .line 26
    .local v25, "appFriendsItemJson":Lorg/json/JSONObject;
    const-string v12, "kunlun_fb_id"

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 27
    .local v5, "kunlun_fb_id":Ljava/lang/String;
    const-string v12, "kunlun_fb_name"

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "kunlun_fb_name":Ljava/lang/String;
    const-string v12, "kunlun_fb_picture"

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    .local v7, "kunlun_fb_picture":Ljava/lang/String;
    const-string v12, "present_tip"

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 30
    .local v8, "present_tip":Ljava/lang/String;
    const-string v12, "askfor_tip"

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 31
    .local v9, "askfor_tip":Ljava/lang/String;
    const-string v12, "present_isavailable"

    const/4 v15, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 32
    .local v10, "present_isavailable":Z
    const-string v12, "askfor_isavailable"

    const/4 v15, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 34
    .local v11, "askfor_isavailable":Z
    new-instance v4, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;

    invoke-direct/range {v4 .. v11}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 35
    .local v4, "appFriendsItemBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;
    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    .line 43
    .end local v4    # "appFriendsItemBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;
    .end local v5    # "kunlun_fb_id":Ljava/lang/String;
    .end local v6    # "kunlun_fb_name":Ljava/lang/String;
    .end local v7    # "kunlun_fb_picture":Ljava/lang/String;
    .end local v8    # "present_tip":Ljava/lang/String;
    .end local v9    # "askfor_tip":Ljava/lang/String;
    .end local v10    # "present_isavailable":Z
    .end local v11    # "askfor_isavailable":Z
    .end local v25    # "appFriendsItemJson":Lorg/json/JSONObject;
    .restart local v14    # "awardsList":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    .restart local v28    # "awards":Lorg/json/JSONArray;
    :cond_3
    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v27

    .line 45
    .local v27, "awardJson":Lorg/json/JSONObject;
    const-string v12, "prompt_img"

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 46
    .local v33, "prompt_img":Ljava/lang/String;
    const-string v12, "bottom_img"

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 47
    .local v29, "bottom_img":Ljava/lang/String;
    const-string v12, "prompt_msg"

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 49
    .local v34, "prompt_msg":Ljava/lang/String;
    new-instance v26, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v26, "award":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;
    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1
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
    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsParseNetResponseToDomainBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;

    move-result-object v0

    return-object v0
.end method
