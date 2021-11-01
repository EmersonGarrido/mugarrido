.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogParseDomainBeanToDD;
.super Ljava/lang/Object;
.source "FeedLogParseDomainBeanToDD.java"

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
    .locals 5
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
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "netRequestDomainBean is null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 18
    :cond_0
    instance-of v3, p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;

    if-nez v3, :cond_1

    .line 19
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\u4f20\u5165\u7684\u4e1a\u52a1Bean\u7684\u7c7b\u578b\u4e0d\u7b26 !"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v0, p1

    .line 22
    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;

    .line 24
    .local v0, "feedLogNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;
    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;->getPostId()Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "postId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\u5fc5\u8981\u7684\u5b57\u6bb5\u4e0d\u5b8c\u6574 !"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 30
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 31
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "requestid"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object v1
.end method
