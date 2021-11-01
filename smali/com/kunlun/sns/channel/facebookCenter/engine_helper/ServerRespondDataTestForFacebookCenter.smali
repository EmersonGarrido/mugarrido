.class public final Lcom/kunlun/sns/channel/facebookCenter/engine_helper/ServerRespondDataTestForFacebookCenter;
.super Ljava/lang/Object;
.source "ServerRespondDataTestForFacebookCenter.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IServerResponseDataValidityTest;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/ServerRespondDataTestForFacebookCenter;->TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private isResponseDateValidate(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1, "resultData"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 52
    if-eqz p1, :cond_0

    const-string v0, "retcode"

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_NONE:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->Success:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public testServerRespondDataError(Ljava/lang/Object;)Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    .locals 8
    .param p1, "netUnpackedData"    # Ljava/lang/Object;

    .prologue
    .line 22
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 24
    .local v3, "netUnpackedDataOfString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 25
    .local v2, "isValidate":Z
    const-string v1, "OK"

    .line 28
    .local v1, "errorMessage":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v4, "resultData":Lorg/json/JSONObject;
    invoke-direct {p0, v4}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/ServerRespondDataTestForFacebookCenter;->isResponseDateValidate(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    const/4 v2, 0x1

    .line 34
    :cond_0
    if-eqz v2, :cond_1

    .line 36
    const/4 v5, 0x0

    .line 46
    .end local v4    # "resultData":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 38
    .restart local v4    # "resultData":Lorg/json/JSONObject;
    :cond_1
    const-string v5, "retmsg"

    sget-object v6, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->HTTP_ERROR:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v6}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v5, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    const-string v6, "retcode"

    sget-object v7, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v5, v6, v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v4    # "resultData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/ServerRespondDataTestForFacebookCenter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v5, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    sget-object v6, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_DataExchangeProtocolMismatch:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v6

    .line 47
    sget-object v7, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_DataExchangeProtocolMismatch:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-direct {v5, v6, v7}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
