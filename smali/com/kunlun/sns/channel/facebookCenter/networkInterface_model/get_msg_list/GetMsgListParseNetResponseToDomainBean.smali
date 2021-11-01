.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListParseNetResponseToDomainBean;
.super Ljava/lang/Object;
.source "GetMsgListParseNetResponseToDomainBean.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_SUCH_KEY:I = 0x1e240


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;
    .locals 29
    .param p1, "netRespondData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    move-object/from16 v24, p1

    check-cast v24, Ljava/lang/String;

    .line 18
    .local v24, "netRespondString":Ljava/lang/String;
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .local v21, "jsonObject":Lorg/json/JSONObject;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v22, "messageItemBeans":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;>;"
    const-string v25, "data"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 22
    .local v20, "jsonArray":Lorg/json/JSONArray;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v25

    if-lez v25, :cond_0

    .line 23
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    .line 63
    .end local v19    # "i":I
    :cond_0
    new-instance v25, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;

    const-string v26, "more_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "logo_url"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "message_center_hint"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v25

    .line 24
    .restart local v19    # "i":I
    :cond_1
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 26
    .local v23, "messageItemJson":Lorg/json/JSONObject;
    const-string v25, "kunlun_fb_type"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    const-string v25, "kunlun_fb_type"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 28
    .local v16, "kunlun_fb_type":Ljava/lang/String;
    :goto_1
    const-string v25, "kunlun_fb_isshow"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    const-string v25, "kunlun_fb_isshow"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 30
    .local v18, "kunlun_fb_isshow":I
    :goto_2
    const-string v25, "spread"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    .line 23
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 26
    .end local v16    # "kunlun_fb_type":Ljava/lang/String;
    .end local v18    # "kunlun_fb_isshow":I
    :cond_2
    const-string v16, ""

    goto :goto_1

    .line 28
    .restart local v16    # "kunlun_fb_type":Ljava/lang/String;
    :cond_3
    const v18, 0x1e240

    goto :goto_2

    .line 34
    .restart local v18    # "kunlun_fb_isshow":I
    :cond_4
    const-string v25, "kunlun_fb_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    const-string v25, "kunlun_fb_id"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, "kunlun_fb_id":Ljava/lang/String;
    :goto_4
    const-string v25, "kunlun_fb_message"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    const-string v25, "kunlun_fb_message"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "kunlun_fb_message":Ljava/lang/String;
    :goto_5
    const-string v25, "kunlun_fb_picture"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_7

    const-string v25, "kunlun_fb_picture"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 40
    .local v8, "kunlun_fb_picture":Ljava/lang/String;
    :goto_6
    const-string v25, "kunlun_fb_award_picture"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    const-string v25, "kunlun_fb_award_picture"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "kunlun_fb_award_picture":Ljava/lang/String;
    :goto_7
    const-string v25, "kunlun_fb_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_9

    const-string v25, "kunlun_fb_name"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, "kunlun_fb_name":Ljava/lang/String;
    :goto_8
    const-string v25, "kunlun_fb_actionid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_a

    const-string v25, "kunlun_fb_actionid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 46
    .local v11, "kunlun_fb_actionid":I
    :goto_9
    const-string v25, "kunlun_fb_objectid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_b

    const-string v25, "kunlun_fb_objectid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 48
    .local v12, "kunlun_fb_objectid":Ljava/lang/String;
    :goto_a
    const-string v25, "kunlun_fb_requestid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    const-string v25, "kunlun_fb_requestid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 50
    .local v13, "kunlun_fb_requestid":Ljava/lang/String;
    :goto_b
    const-string v25, "kunlun_fb_content"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_d

    const-string v25, "kunlun_fb_content"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 52
    .local v14, "kunlun_fb_content":Ljava/lang/String;
    :goto_c
    const-string v25, "kunlun_fb_receiverid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_e

    const-string v25, "kunlun_fb_receiverid"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 54
    .local v15, "kunlun_fb_receiverid":Ljava/lang/String;
    :goto_d
    const-string v25, "kunlun_fb_href"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_f

    const-string v25, "kunlun_fb_href"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 56
    .local v17, "kunlun_fb_href":Ljava/lang/String;
    :goto_e
    new-instance v5, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

    invoke-direct/range {v5 .. v18}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    .local v5, "messageItemBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 34
    .end local v5    # "messageItemBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;
    .end local v6    # "kunlun_fb_id":Ljava/lang/String;
    .end local v7    # "kunlun_fb_message":Ljava/lang/String;
    .end local v8    # "kunlun_fb_picture":Ljava/lang/String;
    .end local v9    # "kunlun_fb_award_picture":Ljava/lang/String;
    .end local v10    # "kunlun_fb_name":Ljava/lang/String;
    .end local v11    # "kunlun_fb_actionid":I
    .end local v12    # "kunlun_fb_objectid":Ljava/lang/String;
    .end local v13    # "kunlun_fb_requestid":Ljava/lang/String;
    .end local v14    # "kunlun_fb_content":Ljava/lang/String;
    .end local v15    # "kunlun_fb_receiverid":Ljava/lang/String;
    .end local v17    # "kunlun_fb_href":Ljava/lang/String;
    :cond_5
    const-string v6, ""

    goto/16 :goto_4

    .line 36
    .restart local v6    # "kunlun_fb_id":Ljava/lang/String;
    :cond_6
    const-string v7, ""

    goto/16 :goto_5

    .line 38
    .restart local v7    # "kunlun_fb_message":Ljava/lang/String;
    :cond_7
    const-string v8, ""

    goto/16 :goto_6

    .line 40
    .restart local v8    # "kunlun_fb_picture":Ljava/lang/String;
    :cond_8
    const-string v9, ""

    goto/16 :goto_7

    .line 42
    .restart local v9    # "kunlun_fb_award_picture":Ljava/lang/String;
    :cond_9
    const-string v10, ""

    goto/16 :goto_8

    .line 44
    .restart local v10    # "kunlun_fb_name":Ljava/lang/String;
    :cond_a
    const v11, 0x1e240

    goto/16 :goto_9

    .line 46
    .restart local v11    # "kunlun_fb_actionid":I
    :cond_b
    const-string v12, ""

    goto :goto_a

    .line 48
    .restart local v12    # "kunlun_fb_objectid":Ljava/lang/String;
    :cond_c
    const-string v13, ""

    goto :goto_b

    .line 50
    .restart local v13    # "kunlun_fb_requestid":Ljava/lang/String;
    :cond_d
    const-string v14, ""

    goto :goto_c

    .line 52
    .restart local v14    # "kunlun_fb_content":Ljava/lang/String;
    :cond_e
    const-string v15, ""

    goto :goto_d

    .line 54
    .restart local v15    # "kunlun_fb_receiverid":Ljava/lang/String;
    :cond_f
    const-string v17, ""

    goto :goto_e
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
    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListParseNetResponseToDomainBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;

    move-result-object v0

    return-object v0
.end method
