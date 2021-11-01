.class public final enum Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;
.super Ljava/lang/Enum;
.source "SimpleNetworkEngineSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

.field public static final enum getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

.field public static handler:Landroid/os/Handler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    const-string v1, "getInstance"

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic access$2(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;)Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener",
            "<TV;>;)",
            "Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "requestBean":Ljava/lang/Object;, "TK;"
    .local p2, "domainBeanAsyncHttpResponseListener":Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;, "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener<TV;>;"
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, "<<<<<<<<<<     \u53d1\u8d77\u4e00\u4e2aDomainBean\u7f51\u7edc\u8bf7\u6c42, \u53c2\u6570\u68c0\u9a8c\u4e2d....     >>>>>>>>>>"

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v6, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;

    invoke-direct {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;-><init>()V

    .line 315
    .local v6, "netRequestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    if-nez p1, :cond_1

    .line 316
    :try_start_0
    new-instance v11, Ljava/lang/NullPointerException;

    new-instance v12, Ljava/lang/StringBuilder;

    iget-object v13, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "--> \u5165\u53c2 requestBean \u4e3a\u7a7a."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :catch_0
    move-exception v3

    .line 494
    .local v3, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "<<<<<<<<<<-----------  \u53d1\u8d77\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25    ----------->>>>>>>>>>\n\u9519\u8bef\u539f\u56e0---> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v11, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$4;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v0, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$4;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;Ljava/lang/Exception;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, " "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object v6

    .line 320
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 321
    .local v8, "requestBeanName":Ljava/lang/String;
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "requestBeanName--> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v11}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetWorkRequestBeanAndStrategyMapping()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;

    move-result-object v11

    invoke-interface {v11, v8}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;->getStrategyByRequestBeanName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;

    .line 328
    .local v2, "domainBeanHelper":Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;
    const-string v10, ""

    .line 329
    .local v10, "specialPath":Ljava/lang/String;
    const-string v4, ""

    .line 330
    .local v4, "fullUrlString":Ljava/lang/String;
    instance-of v11, p1, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;

    if-eqz v11, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;

    move-object v11, v0

    invoke-interface {v11}, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;->getMoreUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 331
    new-instance v12, Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;

    move-object v11, v0

    invoke-interface {v11}, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;->getMoreUrl()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "&"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 336
    :goto_1
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "specialPath--> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "fullUrlString--> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v1, "dataDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;->getParseNetRequestBeanToDDStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;

    move-result-object v7

    .line 343
    .local v7, "parseDomainBeanToDataDictionary":Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;
    if-eqz v7, :cond_2

    .line 344
    invoke-interface {v7, p1}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;->parseNetRequestBeanToDataDictionary(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 345
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "dataDictionary--> "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_2
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v11}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getDomainBeanRequestPublicParamsFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IDomainBeanRequestPublicParams;

    move-result-object v11

    invoke-interface {v11}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IDomainBeanRequestPublicParams;->getPublicParameter()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 352
    const-string v5, "GET"

    .line 353
    .local v5, "httpRequestMethod":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 357
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v11}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetRequestParamsPackageFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;

    move-result-object v11

    invoke-interface {v11, v5, v1}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;->packageNetRequestParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v9

    .line 359
    .local v9, "requestParams":Ljava/lang/Object;
    sget-object v11, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    .line 360
    new-instance v12, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v8, v2, v0}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$2;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V

    .line 359
    invoke-virtual {v11, v4, v5, v9, v12}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->requestDomainBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v6

    .line 481
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v12, "         ----- \u53c2\u6570\u68c0\u9a8c\u6b63\u786e, \u542f\u52a8\u5b50\u7ebf\u7a0b\u8fdb\u884c\u5f02\u6b65\u8bbf\u95ee.  -----          "

    invoke-static {v11, v12}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    if-eqz v11, :cond_0

    .line 485
    sget-object v11, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$3;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, v0}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$3;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 333
    .end local v1    # "dataDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "httpRequestMethod":Ljava/lang/String;
    .end local v7    # "parseDomainBeanToDataDictionary":Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;
    .end local v9    # "requestParams":Ljava/lang/Object;
    :cond_3
    invoke-interface {v2, p1}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;->getSpecialPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 334
    iget-object v11, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v11}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getSpliceFullUrlByDomainBeanSpecialPathFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/ISpliceFullUrlByDomainBeanSpecialPath;

    move-result-object v11

    invoke-interface {v11, v10}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/ISpliceFullUrlByDomainBeanSpecialPath;->getFullUrlByDomainBeanSpecialPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_1
.end method

.method public requestFileDownlaod(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fileFullSavePath"    # Ljava/lang/String;
    .param p3, "fileAsyncHttpResponseHandler"    # Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;

    .prologue
    .line 597
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestFileDownlaod(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public requestFileDownlaod(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZLcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "fileFullSavePath"    # Ljava/lang/String;
    .param p4, "isNeedContinuingly"    # Z
    .param p5, "fileAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;",
            ")",
            "Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;"
        }
    .end annotation

    .prologue
    .line 537
    .local p2, "dataDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 539
    .local v7, "requestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v5, "file":Ljava/io/File;
    const-string v3, "GET"

    .line 543
    .local v3, "httpRequestMethod":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 544
    const-string v3, "POST"

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetRequestParamsPackageFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;

    move-result-object v0

    invoke-interface {v0, v3, p2}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;->packageNetRequestParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v4

    .line 548
    .local v4, "requestParams":Ljava/lang/Object;
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    .line 549
    new-instance v6, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;

    invoke-direct {v6, p0, p5}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$5;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/IFileAsyncHttpResponseListener;)V

    move-object v1, p1

    move v2, p4

    .line 548
    invoke-virtual/range {v0 .. v6}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->requestFileDownload(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v7

    .line 586
    return-object v7
.end method

.method public requestFileUpload(Ljava/lang/String;Ljava/util/Map;Lcom/loopj/android/http/RequestParams$FileWrapper;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "fileWrapper"    # Lcom/loopj/android/http/RequestParams$FileWrapper;
    .param p4, "fileAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/loopj/android/http/RequestParams$FileWrapper;",
            "Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;",
            ")",
            "Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 617
    .local p2, "dataDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 620
    .local v6, "requestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetRequestParamsPackageFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;

    move-result-object v0

    const-string v1, "POST"

    invoke-interface {v0, v1, p2}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;->packageNetRequestParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "requestParams":Ljava/lang/Object;
    move-object v0, v3

    .line 621
    check-cast v0, Lcom/loopj/android/http/RequestParams;

    iget-object v1, p3, Lcom/loopj/android/http/RequestParams$FileWrapper;->customFileName:Ljava/lang/String;

    iget-object v2, p3, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    iget-object v4, p3, Lcom/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 623
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    const-string v2, "POST"

    iget-object v4, p3, Lcom/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    new-instance v5, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;

    invoke-direct {v5, p0, p4}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->requestFileUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v6

    .line 658
    return-object v6
.end method

.method public requestFileUpload(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "uploadFile"    # Ljava/io/File;
    .param p4, "fileUploadAsyncHttpResponseListener"    # Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            "Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;",
            ")",
            "Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;"
        }
    .end annotation

    .prologue
    .line 672
    .local p2, "dataDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 675
    .local v2, "requestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    :try_start_0
    iget-object v3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v3}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getDomainBeanRequestPublicParamsFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IDomainBeanRequestPublicParams;

    move-result-object v3

    invoke-interface {v3}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IDomainBeanRequestPublicParams;->getPublicParameter()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 678
    new-instance v1, Lcom/loopj/android/http/RequestParams$FileWrapper;

    const-string v3, "image/png"

    const-string v4, "upfile"

    invoke-direct {v1, p3, v3, v4}, Lcom/loopj/android/http/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .local v1, "fileWrapper":Lcom/loopj/android/http/RequestParams$FileWrapper;
    new-instance v3, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;

    invoke-direct {v3, p0, p4, p3}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$7;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Lcom/kunlun/sns/net_engine/my_network_engine/IFileUploadAsyncHttpResponseListener;Ljava/io/File;)V

    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestFileUpload(Ljava/lang/String;Ljava/util/Map;Lcom/loopj/android/http/RequestParams$FileWrapper;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 760
    .end local v1    # "fileWrapper":Lcom/loopj/android/http/RequestParams$FileWrapper;
    :goto_0
    return-object v2

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setEngineHelper(Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;)V
    .locals 0
    .param p1, "engineHelper"    # Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    .line 92
    return-void
.end method

.method public synchronousRequestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)Ljava/lang/Object;
    .locals 17
    .param p2, "errorBeanOUT"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "requestBean":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v15, " "

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v15, " "

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v15, " "

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v15, "<<<<<<<<<<     \u53d1\u8d77\u4e00\u4e2aDomainBean\u7f51\u7edc\u8bf7\u6c42, \u53c2\u6570\u68c0\u9a8c\u4e2d....     >>>>>>>>>>"

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v15, " "

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v2, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v2}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 125
    .local v2, "blockingQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    if-nez p1, :cond_2

    .line 126
    :try_start_0
    new-instance v14, Ljava/lang/NullPointerException;

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "--> \u5165\u53c2 requestBean \u4e3a\u7a7a."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :catch_0
    move-exception v5

    .line 279
    .local v5, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u53d1\u8d77\u7f51\u7edc\u8bf7\u6c42\u5931\u8d25, \u9519\u8bef\u539f\u56e0-->"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz p2, :cond_0

    .line 282
    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->setCode(I)V

    .line 283
    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->setMsg(Ljava/lang/String;)V

    .line 287
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 v9, 0x0

    :cond_1
    return-object v9

    .line 130
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 131
    .local v11, "requestBeanName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "requestBeanName --> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v14}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetWorkRequestBeanAndStrategyMapping()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;

    move-result-object v14

    invoke-interface {v14, v11}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;->getStrategyByRequestBeanName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;

    .line 138
    .local v4, "domainBeanHelper":Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;
    const-string v13, "more_url"

    .line 139
    .local v13, "specialPath":Ljava/lang/String;
    const-string v7, ""

    .line 140
    .local v7, "fullUrlString":Ljava/lang/String;
    move-object/from16 v0, p1

    instance-of v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;

    if-eqz v14, :cond_4

    move-object/from16 v0, p1

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;

    move-object v14, v0

    invoke-interface {v14}, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;->getMoreUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 141
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;

    move-object v14, v0

    invoke-interface {v14}, Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;->getMoreUrl()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "&"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "specialPath--> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "fullUrlString--> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 152
    .local v3, "dataDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;->getParseNetRequestBeanToDDStrategyObject()Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;

    move-result-object v10

    .line 153
    .local v10, "parseDomainBeanToDataDictionary":Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;
    if-eqz v10, :cond_3

    .line 154
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;->parseNetRequestBeanToDataDictionary(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "dataDictionary--> "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v14}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getDomainBeanRequestPublicParamsFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IDomainBeanRequestPublicParams;

    move-result-object v14

    invoke-interface {v14}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IDomainBeanRequestPublicParams;->getPublicParameter()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 162
    const-string v8, "GET"

    .line 163
    .local v8, "httpRequestMethod":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 166
    move-object v1, v8

    .line 169
    .local v1, "HttpMethod":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v14}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getNetRequestParamsPackageFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;

    move-result-object v14

    invoke-interface {v14, v1, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/INetRequestParamsPackage;->packageNetRequestParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v12

    .line 171
    .local v12, "requestParams":Ljava/lang/Object;
    sget-object v14, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;

    new-instance v15, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v4, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$1;-><init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;Ljava/util/concurrent/BlockingQueue;)V

    invoke-virtual {v14, v7, v1, v12, v15}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/HttpEngineFactoryMethodSingleton;->requestDomainBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IDomainBeanRequestAsyncHttpResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->TAG:Ljava/lang/String;

    const-string v15, "         ----- \u53c2\u6570\u68c0\u9a8c\u6b63\u786e, \u542f\u52a8\u5b50\u7ebf\u7a0b\u8fdb\u884c\u5f02\u6b65\u8bbf\u95ee.  -----          "

    invoke-static {v14, v15}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v9

    .line 267
    .local v9, "netRequestResult":Ljava/lang/Object;
    instance-of v14, v9, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    if-eqz v14, :cond_1

    .line 269
    move-object v0, v9

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    move-object v6, v0

    .line 270
    .local v6, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    if-eqz p2, :cond_0

    .line 271
    invoke-virtual {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getCode()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->setCode(I)V

    .line 272
    invoke-virtual {v6}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->setMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    .end local v1    # "HttpMethod":Ljava/lang/String;
    .end local v3    # "dataDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    .end local v8    # "httpRequestMethod":Ljava/lang/String;
    .end local v9    # "netRequestResult":Ljava/lang/Object;
    .end local v10    # "parseDomainBeanToDataDictionary":Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/IParseNetRequestBeanToDataDictionary;
    .end local v12    # "requestParams":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/IDomainBeanHelper;->getSpecialPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->engineHelper:Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;

    invoke-interface {v14}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;->getSpliceFullUrlByDomainBeanSpecialPathFunction()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/ISpliceFullUrlByDomainBeanSpecialPath;

    move-result-object v14

    invoke-interface {v14, v13}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/ISpliceFullUrlByDomainBeanSpecialPath;->getFullUrlByDomainBeanSpecialPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_1
.end method
