.class public Lcom/kunlun/sns/channel/facebookCenter/engine_helper/NetRequestParamsPackageForFacebookCenter;
.super Ljava/lang/Object;
.source "NetRequestParamsPackageForFacebookCenter.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public packageNetRequestParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .param p1, "httpRequestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "domainDataDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 24
    :cond_0
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    :goto_0
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0, p2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 19
    .local v0, "requestParams":Lcom/loopj/android/http/RequestParams;
    goto :goto_0
.end method
