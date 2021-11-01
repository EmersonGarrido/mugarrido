.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->synchronousRequestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

.field private final synthetic val$blockingQueue:Ljava/util/concurrent/BlockingQueue;

.field private final synthetic val$domainBeanHelper:Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;

.field private final synthetic val$requestBeanName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$requestBeanName:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$domainBeanHelper:Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;

    iput-object p4, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;ILjava/lang/Throwable;)V
    .locals 4
    .param p1, "netRequestIsCancelled"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;
    .param p2, "statusCode"    # I
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<<<<<<<<<<     \u53d1\u8d77\u7684 DomainBean ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$requestBeanName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] \u7f51\u7edc\u8bf7\u6c42, \u7f51\u7edc\u5c42(http\u5f15\u64ce\u5c42)\u8bbf\u95ee\u5931\u8d25 , \u539f\u56e0-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$blockingQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "interruptedException":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;Ljava/lang/Object;)V
    .locals 9
    .param p1, "netRequestIsCancelled"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;
    .param p2, "response"    # Ljava/lang/Object;

    .prologue
    .line 174
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<<<<<<<<<<     \u53d1\u8d77\u7684 DomainBean ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$requestBeanName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] \u7f51\u7edc\u5c42\u8bf7\u6c42\u6210\u529f    >>>>>>>>>>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v2, 0x0

    .line 177
    .local v2, "errorCode":I
    const-string v3, ""

    .line 180
    .local v3, "errorMessage":Ljava/lang/String;
    invoke-interface {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/INetRequestIsCancelled;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 239
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$blockingQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    invoke-direct {v7, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :goto_1
    return-void

    .line 187
    :cond_0
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$3(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    move-result-object v6

    invoke-interface {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetRespondEntityDataUnpackFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRespondRawEntityDataUnpack;

    move-result-object v6

    invoke-interface {v6, p2}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRespondRawEntityDataUnpack;->unpackNetRespondRawEntityData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, "netUnpackedData":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 189
    sget-object v6, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v2

    .line 190
    sget-object v6, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 192
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_1
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u670d\u52a1\u5668\u8fd4\u56de\u7684\u6570\u636e(\u5df2\u89e3\u5305) -------------->\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n<--------------------------------------"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$3(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    move-result-object v6

    invoke-interface {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getServerRespondDataTestFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IServerResponseDataValidityTest;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IServerResponseDataValidityTest;->testServerRespondDataError(Ljava/lang/Object;)Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    move-result-object v1

    .line 204
    .local v1, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getCode()I

    move-result v2

    .line 207
    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v3

    .line 208
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$domainBeanHelper:Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;

    invoke-interface {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;->getParseNetResponseDataToNetRespondBeanStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetResponseDataToNetRespondBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 218
    .local v5, "respondDomainBean":Ljava/lang/Object;, "TV;"
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "netRespondDomainBean->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 223
    .end local v5    # "respondDomainBean":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->this$0:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<<<<<<<<<<-----------  \u521b\u5efa \u7f51\u7edc\u54cd\u5e94\u4e1a\u52a1Bean\u5931\u8d25    ----------->>>>>>>>>>\n\u51fa\u73b0\u8fd9\u79cd\u60c5\u51b5\u7684\u4e1a\u52a1Bean\u662f---> "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;->val$requestBeanName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\u539f\u56e0---> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    sget-object v6, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_ParseNetRespondStringToDomainBeanFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v2

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    .line 228
    goto/16 :goto_0

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    .end local v4    # "netUnpackedData":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method
