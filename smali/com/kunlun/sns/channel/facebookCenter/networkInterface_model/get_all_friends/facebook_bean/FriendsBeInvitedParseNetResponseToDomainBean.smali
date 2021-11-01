.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedParseNetResponseToDomainBean;
.super Ljava/lang/Object;
.source "FriendsBeInvitedParseNetResponseToDomainBean.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;",
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
.method public parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;
    .locals 16
    .param p1, "netRespondData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    move-object/from16 v7, p1

    check-cast v7, Lorg/json/JSONObject;

    .line 16
    .local v7, "jsonObject":Lorg/json/JSONObject;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v5, "friendBeInvitedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;>;"
    const-string v14, "data"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 18
    .local v4, "friendBeInvitedItemJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lt v6, v14, :cond_2

    .line 43
    const-string v14, "paging"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 44
    .local v9, "pagingJSON":Lorg/json/JSONObject;
    new-instance v8, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;

    invoke-direct {v8}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;-><init>()V

    .line 46
    .local v8, "paging":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    if-eqz v9, :cond_1

    .line 47
    const-string v14, "cursors"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    .local v1, "cursorsJSON":Lorg/json/JSONObject;
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;-><init>()V

    .line 50
    .local v0, "cursors":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;
    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

    .end local v0    # "cursors":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;
    const-string v14, "before"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "after"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v14, v15}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .restart local v0    # "cursors":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;
    :cond_0
    new-instance v8, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;

    .end local v8    # "paging":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    const-string v14, "next"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "previous"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v14, v15, v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;)V

    .line 57
    .end local v0    # "cursors":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;
    .end local v1    # "cursorsJSON":Lorg/json/JSONObject;
    .restart local v8    # "paging":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    :cond_1
    new-instance v14, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;

    invoke-direct {v14, v5, v8}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;-><init>(Ljava/util/List;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;)V

    return-object v14

    .line 19
    .end local v8    # "paging":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    .end local v9    # "pagingJSON":Lorg/json/JSONObject;
    :cond_2
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;

    invoke-direct {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;-><init>()V

    .line 20
    .local v2, "friendBeInvitedItem":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 22
    .local v3, "friendBeInvitedItemJSON":Lorg/json/JSONObject;
    if-eqz v3, :cond_5

    .line 23
    const-string v14, "picture"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 24
    .local v13, "pictureJSON":Lorg/json/JSONObject;
    new-instance v10, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;

    invoke-direct {v10}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;-><init>()V

    .line 26
    .local v10, "picture":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;
    if-eqz v13, :cond_4

    .line 27
    const-string v14, "data"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 28
    .local v12, "pictureDataJSON":Lorg/json/JSONObject;
    new-instance v11, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;

    invoke-direct {v11}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;-><init>()V

    .line 30
    .local v11, "pictureData":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;
    if-eqz v12, :cond_3

    .line 31
    new-instance v11, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;

    .end local v11    # "pictureData":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;
    const-string v14, "is_silhouette"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "url"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v14, v15}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;-><init>(ZLjava/lang/String;)V

    .line 34
    .restart local v11    # "pictureData":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;
    :cond_3
    new-instance v10, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;

    .end local v10    # "picture":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;
    invoke-direct {v10, v11}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;-><init>(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;)V

    .line 37
    .end local v11    # "pictureData":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;
    .end local v12    # "pictureDataJSON":Lorg/json/JSONObject;
    .restart local v10    # "picture":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;
    :cond_4
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;

    .end local v2    # "friendBeInvitedItem":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;
    const-string v14, "id"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "name"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v2, v14, v15, v10}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;)V

    .line 40
    .end local v10    # "picture":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;
    .end local v13    # "pictureJSON":Lorg/json/JSONObject;
    .restart local v2    # "friendBeInvitedItem":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;
    :cond_5
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
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
    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedParseNetResponseToDomainBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;

    move-result-object v0

    return-object v0
.end method
