.class public final enum Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;
.super Ljava/lang/Enum;
.source "SdkLogCollectionSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

.field public static final enum getInstance:Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    const-string v1, "getInstance"

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->getInstance:Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    sget-object v1, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->getInstance:Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->ENUM$VALUES:[Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private createErrorLogBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kunlun/sns/core/sdk_log_collection/KunlunSNSLogBean;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lcom/kunlun/sns/core/sdk_log_collection/KunlunSNSLogBean;

    invoke-direct {v0}, Lcom/kunlun/sns/core/sdk_log_collection/KunlunSNSLogBean;-><init>()V

    .line 60
    .local v0, "errorLogRequestBean":Lcom/kunlun/sns/core/sdk_log_collection/KunlunSNSLogBean;
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->ENUM$VALUES:[Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public recordLog(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "errorBean"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 22
    invoke-virtual {p3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->recordLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public recordLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v3, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v3}, Lcom/kunlun/sns/core/KunlunSNS;->isDebugModel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "--->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->createErrorLogBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/kunlun/sns/core/sdk_log_collection/KunlunSNSLogBean;

    move-result-object v2

    .line 36
    .local v2, "sdkLogBean":Lcom/kunlun/sns/core/sdk_log_collection/KunlunSNSLogBean;
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-virtual {v2}, Lcom/kunlun/sns/core/sdk_log_collection/KunlunSNSLogBean;->toMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 37
    .local v1, "requestParams":Lcom/loopj/android/http/RequestParams;
    sget-object v3, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    invoke-virtual {v3}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getSharedAsyncHttpClient()Lcom/loopj/android/http/AsyncHttpClient;

    move-result-object v3

    const-string v4, "http://sdklog.pub.kunlun.com/?act=log.save&type=pub"

    .line 38
    new-instance v5, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton$1;

    invoke-direct {v5, p0}, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton$1;-><init>(Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;)V

    .line 37
    invoke-virtual {v3, v4, v1, v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    goto :goto_0
.end method
