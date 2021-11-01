.class public Lcom/kunlun/sns/channel/facebookCenter/engine_helper/SpliceFullUrlByDomainBeanSpecialPathForFacebookCenter;
.super Ljava/lang/Object;
.source "SpliceFullUrlByDomainBeanSpecialPathForFacebookCenter.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/ISpliceFullUrlByDomainBeanSpecialPath;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getFullUrlByDomainBeanSpecialPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "specialPath"    # Ljava/lang/String;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->getEngineHelper()Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;

    move-result-object v1

    invoke-interface {v1}, Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;->getUrlForChannel()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IUrlForChannel;

    move-result-object v1

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IUrlForChannel;->getMainUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
