.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadParseDomainBeanToDD;
.super Ljava/lang/Object;
.source "GetNoReadParseDomainBeanToDD.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseNetRequestBeanToDataDictionary(Ljava/lang/Object;)Ljava/util/Map;
    .locals 3
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
    .line 12
    if-nez p1, :cond_0

    .line 13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "netRequestDomainBean is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadNetRequestBean;

    if-nez v1, :cond_1

    .line 17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\u4f20\u5165\u7684\u4e1a\u52a1Bean\u7684\u7c7b\u578b\u4e0d\u7b26 !"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method
