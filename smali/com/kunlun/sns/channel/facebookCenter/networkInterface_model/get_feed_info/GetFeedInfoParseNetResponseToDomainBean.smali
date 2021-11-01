.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoParseNetResponseToDomainBean;
.super Ljava/lang/Object;
.source "GetFeedInfoParseNetResponseToDomainBean.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;",
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
.method public parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;
    .locals 9
    .param p1, "netRespondData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    .line 12
    .local v7, "netRespondString":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 14
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v0, "kunlun_fb_feed_name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "kunlun_fb_feed_name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "kunlun_fb_feed_name":Ljava/lang/String;
    :goto_0
    const-string v0, "kunlun_fb_feed_picture"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    const-string v0, "kunlun_fb_feed_picture"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 20
    .local v2, "kunlun_fb_feed_picture":Ljava/lang/String;
    :goto_1
    const-string v0, "kunlun_fb_feed_caption"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    const-string v0, "kunlun_fb_feed_caption"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "kunlun_fb_feed_caption":Ljava/lang/String;
    :goto_2
    const-string v0, "kunlun_fb_feed_description"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    const-string v0, "kunlun_fb_feed_description"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "kunlun_fb_feed_description":Ljava/lang/String;
    :goto_3
    const-string v0, "kunlun_fb_feed_link"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    const-string v0, "kunlun_fb_feed_link"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "kunlun_fb_feed_link":Ljava/lang/String;
    :goto_4
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 15
    .end local v1    # "kunlun_fb_feed_name":Ljava/lang/String;
    .end local v2    # "kunlun_fb_feed_picture":Ljava/lang/String;
    .end local v3    # "kunlun_fb_feed_caption":Ljava/lang/String;
    .end local v4    # "kunlun_fb_feed_description":Ljava/lang/String;
    .end local v5    # "kunlun_fb_feed_link":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 18
    .restart local v1    # "kunlun_fb_feed_name":Ljava/lang/String;
    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 21
    .restart local v2    # "kunlun_fb_feed_picture":Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_2

    .line 24
    .restart local v3    # "kunlun_fb_feed_caption":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto :goto_3

    .line 27
    .restart local v4    # "kunlun_fb_feed_description":Ljava/lang/String;
    :cond_4
    const-string v5, ""

    goto :goto_4
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
    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoParseNetResponseToDomainBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;

    move-result-object v0

    return-object v0
.end method
