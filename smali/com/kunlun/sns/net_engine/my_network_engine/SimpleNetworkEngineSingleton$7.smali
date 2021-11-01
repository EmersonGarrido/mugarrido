.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestFileUpload(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

.field private final synthetic val$fileUploadAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;

.field private final synthetic val$uploadFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$fileUploadAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;

    iput-object p3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$uploadFile:Ljava/io/File;

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "statusCode"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 745
    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$fileUploadAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;

    if-eqz v1, :cond_0

    .line 746
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    .line 747
    .local v0, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$fileUploadAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;

    invoke-interface {v1, v0}, Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 749
    .end local v0    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    :cond_0
    return-void
.end method

.method public onProgress(JJ)V
    .locals 0
    .param p1, "bytesWritten"    # J
    .param p3, "totalSize"    # J

    .prologue
    .line 754
    return-void
.end method

.method public onSuccess(Ljava/io/File;[B)V
    .locals 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "responseBody"    # [B

    .prologue
    .line 683
    const/4 v3, 0x0

    .line 684
    .local v3, "errorCode":I
    const-string v4, ""

    .line 690
    .local v4, "errorMessage":Ljava/lang/String;
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$3(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    move-result-object v7

    invoke-interface {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetRespondEntityDataUnpackFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRespondRawEntityDataUnpack;

    move-result-object v7

    invoke-interface {v7, p2}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRespondRawEntityDataUnpack;->unpackNetRespondRawEntityData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 691
    .local v6, "netUnpackedData":Ljava/lang/Object;
    if-nez v6, :cond_1

    .line 692
    sget-object v7, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v3

    .line 693
    sget-object v7, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 694
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v8}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v6    # "netUnpackedData":Ljava/lang/Object;
    :goto_0
    new-instance v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-direct {v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    .line 738
    .local v2, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$fileUploadAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;

    if-eqz v7, :cond_0

    .line 739
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$fileUploadAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;

    invoke-interface {v7, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 741
    :cond_0
    :goto_1
    return-void

    .line 698
    .end local v2    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    .restart local v6    # "netUnpackedData":Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u670d\u52a1\u5668\u8fd4\u56de\u7684\u6570\u636e(\u5df2\u89e3\u5305) -------------->\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n<--------------------------------------"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$3(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    move-result-object v7

    invoke-interface {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getServerRespondDataTestFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IServerResponseDataValidityTest;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IServerResponseDataValidityTest;->testServerRespondDataError(Ljava/lang/Object;)Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    move-result-object v2

    .line 706
    .restart local v2    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    if-eqz v2, :cond_2

    .line 708
    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getCode()I

    move-result v3

    .line 709
    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v4

    .line 710
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 716
    :cond_2
    const/4 v5, 0x0

    .line 718
    .local v5, "fileUrl":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    check-cast v6, Ljava/lang/String;

    .end local v6    # "netUnpackedData":Ljava/lang/Object;
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "data"

    invoke-static {v7, v8}, Lcom/kunlun/sns/net_engine/toolutils/JSONTools;->safeJSONObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 719
    .local v0, "data":Lorg/json/JSONObject;
    const-string v7, "fileurl"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 728
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$fileUploadAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;

    if-eqz v7, :cond_0

    .line 729
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$fileUploadAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;

    iget-object v8, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->val$uploadFile:Ljava/io/File;

    invoke-interface {v7, v8, v5}, Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;->onSuccess(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 720
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 721
    .local v1, "e":Lorg/json/JSONException;
    const/4 v3, -0x1

    .line 722
    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    .line 723
    iget-object v7, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
