.class public final Lcom/kunlun/sns/channel/facebookCenter/engine_helper/NetRespondEntityDataUnpackForFacebookCenter;
.super Ljava/lang/Object;
.source "NetRespondEntityDataUnpackForFacebookCenter.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRespondRawEntityDataUnpack;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/NetRespondEntityDataUnpackForFacebookCenter;->TAG:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public unpackNetRespondRawEntityData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "rawData"    # Ljava/lang/Object;

    .prologue
    .line 13
    move-object v3, p1

    check-cast v3, [B

    .line 14
    .local v3, "rawDataOfByteArray":[B
    const/4 v1, 0x0

    .line 17
    .local v1, "netUnpackedData":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "netUnpackedData":Ljava/lang/String;
    .local v2, "netUnpackedData":Ljava/lang/String;
    move-object v1, v2

    .line 22
    .end local v2    # "netUnpackedData":Ljava/lang/String;
    .restart local v1    # "netUnpackedData":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/NetRespondEntityDataUnpackForFacebookCenter;->TAG:Ljava/lang/String;

    const-string v5, "\u89e3\u5305 NetRespondRawEntityData \u5931\u8d25!"

    invoke-static {v4, v5}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
