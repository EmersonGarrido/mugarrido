.class public final Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;
.super Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/AbstractRequestBeanAndStrategyBeanMapping;
.source "EngineHelperFactoryMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static engineHelper:Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/AbstractRequestBeanAndStrategyBeanMapping;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->TAG:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/AbstractRequestBeanAndStrategyBeanMapping;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->kvMapping:Ljava/util/Map;

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->kakao:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/sns/core/channel/ChannelEnum;->kakao:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getIngineHelperForSdkClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->kvMapping:Ljava/util/Map;

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebook:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebook:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getIngineHelperForSdkClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->kvMapping:Ljava/util/Map;

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebookCenter:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebookCenter:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getIngineHelperForSdkClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->kvMapping:Ljava/util/Map;

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->line:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/sns/core/channel/ChannelEnum;->line:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getIngineHelperForSdkClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->kvMapping:Ljava/util/Map;

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->KLCCN:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/sns/core/channel/ChannelEnum;->KLCCN:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getIngineHelperForSdkClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public static getEngineHelper()Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->engineHelper:Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;

    return-object v0
.end method

.method public static declared-synchronized initWithSNSChannel(Lcom/kunlun/sns/core/channel/ChannelEnum;)V
    .locals 5
    .param p0, "snsChannelEnum"    # Lcom/kunlun/sns/core/channel/ChannelEnum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    const-class v2, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->engineHelper:Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;

    if-eqz v1, :cond_0

    .line 11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "--> \u4e0d\u80fd\u91cd\u590d\u8c03\u7528 initWithSNSChannel \u65b9\u6cd5\u8fdb\u884c\u521d\u59cb\u5316\u5de5\u4f5c."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 14
    :cond_0
    :try_start_1
    new-instance v0, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;

    invoke-direct {v0}, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;-><init>()V

    .line 15
    .local v0, "engineHelperFactoryMethod":Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;
    invoke-virtual {p0}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->getStrategyByRequestBeanName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;

    sput-object v1, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->engineHelper:Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    monitor-exit v2

    return-void
.end method
