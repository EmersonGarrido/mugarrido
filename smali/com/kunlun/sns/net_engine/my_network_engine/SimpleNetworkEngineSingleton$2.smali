.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

.field private final synthetic val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

.field private final synthetic val$domainBeanHelper:Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;

.field private final synthetic val$requestBeanName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$requestBeanName:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$domainBeanHelper:Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;

    iput-object p4, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;)Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    return-object v0
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;ILjava/lang/Throwable;)V
    .locals 8
    .param p1, "netRequestIsCancelled"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;
    .param p2, "statusCode"    # I
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<<<<<<<<<<     \u53d1\u8d77\u7684 DomainBean ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$requestBeanName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] \u7f51\u7edc\u8bf7\u6c42, \u7f51\u7edc\u5c42(http\u5f15\u64ce\u5c42)\u8bbf\u95ee\u5931\u8d25 , \u539f\u56e0-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget-object v7, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$3;

    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$requestBeanName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$3;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;ILjava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;Ljava/lang/Object;)V
    .locals 16
    .param p1, "netRequestIsCancelled"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;
    .param p2, "response"    # Ljava/lang/Object;

    .prologue
    .line 363
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<<<<<<<<     \u53d1\u8d77\u7684 DomainBean ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$requestBeanName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] \u7f51\u7edc\u5c42\u8bf7\u6c42\u6210\u529f    >>>>>>>>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v13, 0x0

    .line 366
    .local v13, "errorCode":I
    const-string v14, ""

    .line 369
    .local v14, "errorMessage":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    :goto_0
    new-instance v10, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-direct {v10, v13, v14}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    .line 438
    .local v10, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    new-instance v6, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$2;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$requestBeanName:Ljava/lang/String;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v6 .. v11}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$2;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    :goto_1
    return-void

    .line 376
    .end local v10    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$3(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetRespondEntityDataUnpackFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRespondRawEntityDataUnpack;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRespondRawEntityDataUnpack;->unpackNetRespondRawEntityData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 377
    .local v15, "netUnpackedData":Ljava/lang/Object;
    if-nez v15, :cond_1

    .line 378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v13

    .line 380
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 381
    goto :goto_0

    .line 383
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u7684\u6570\u636e(\u5df2\u89e3\u5305) -------------->\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n<--------------------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$3(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getServerRespondDataTestFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IServerResponseDataValidityTest;

    move-result-object v1

    invoke-interface {v1, v15}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IServerResponseDataValidityTest;->testServerRespondDataError(Ljava/lang/Object;)Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    move-result-object v10

    .line 391
    .restart local v10    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    if-eqz v10, :cond_2

    .line 393
    invoke-virtual {v10}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getCode()I

    move-result v13

    .line 394
    invoke-virtual {v10}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v14

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 404
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$domainBeanHelper:Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;->getParseNetResponseDataToNetRespondBeanStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;

    move-result-object v1

    invoke-interface {v1, v15}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 405
    .local v5, "respondDomainBean":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "netRespondDomainBean->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    sget-object v7, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$domainBeanAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$requestBeanName:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2$1;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 428
    .end local v5    # "respondDomainBean":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v12

    .line 429
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<<<<<<<<-----------  \u521b\u5efa \u7f51\u7edc\u54cd\u5e94\u4e1a\u52a1Bean\u5931\u8d25    ----------->>>>>>>>>>\n\u51fa\u73b0\u8fd9\u79cd\u60c5\u51b5\u7684\u4e1a\u52a1Bean\u662f---> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;->val$requestBeanName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u539f\u56e0---> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_ParseNetRespondStringToDomainBeanFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v13

    .line 431
    invoke-virtual {v12}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0
.end method
