.class public final enum Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;
.super Ljava/lang/Enum;
.source "HttpEngineFactoryMethodSingleton.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IHttpRequestForDomainBean;
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IHttpRequestForFile;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;",
        ">;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IHttpRequestForDomainBean;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IHttpRequestForFile;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

.field public static final enum getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

.field private static final httpEngineOfAsyncHttpClient:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    const-string v1, "getInstance"

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    .line 29
    new-instance v0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    invoke-direct {v0}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;-><init>()V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->httpEngineOfAsyncHttpClient:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    .line 26
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getSharedAsyncHttpClient()Lcom/loopj/android/http/AsyncHttpClient;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->httpEngineOfAsyncHttpClient:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    iget-object v0, v0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->asyncHttpClient:Lcom/loopj/android/http/AsyncHttpClient;

    return-object v0
.end method

.method public requestDomainBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p3, "requestParams"    # Ljava/lang/Object;
    .param p4, "domainBeanRequestAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;

    .prologue
    .line 48
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->httpEngineOfAsyncHttpClient:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->requestDomainBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public requestFileDownload(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isNeedContinuingly"    # Z
    .param p3, "requestMethod"    # Ljava/lang/String;
    .param p4, "requestParams"    # Ljava/lang/Object;
    .param p5, "downLoadFile"    # Ljava/io/File;
    .param p6, "fileRequestAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    .prologue
    .line 56
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->httpEngineOfAsyncHttpClient:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->requestFileDownload(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public requestFileUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .param p3, "requestParams"    # Ljava/lang/Object;
    .param p4, "uploadFile"    # Ljava/io/File;
    .param p5, "fileUploadRequestAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    .prologue
    .line 61
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->httpEngineOfAsyncHttpClient:Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/HttpEngineOfAsyncHttpClient;->requestFileUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v0

    return-object v0
.end method
