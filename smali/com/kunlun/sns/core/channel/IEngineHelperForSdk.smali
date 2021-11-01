.class public interface abstract Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;
.super Ljava/lang/Object;
.source "IEngineHelperForSdk.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;


# virtual methods
.method public abstract getIChannelInitializer()Lcom/kunlun/sns/core/channel/IChannelInitializer;
.end method

.method public abstract getSdkCommandRequestBeanAndStrategyMapping()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;
.end method

.method public abstract getSdkParams(Landroid/os/Bundle;)Lcom/kunlun/sns/core/channel/SdkParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
