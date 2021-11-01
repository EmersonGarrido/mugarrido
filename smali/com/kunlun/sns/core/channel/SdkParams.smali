.class public abstract Lcom/kunlun/sns/core/channel/SdkParams;
.super Ljava/lang/Object;
.source "SdkParams.java"


# instance fields
.field private final KALENDS_DEBUGMODE:Ljava/lang/String;

.field private final KALENDS_PRODUCTID:Ljava/lang/String;

.field protected deviceId:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final roleInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serverID:Ljava/lang/String;

.field protected snsChannelEnum:Lcom/kunlun/sns/core/channel/ChannelEnum;

.field protected version:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "configParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v1, "Kunlun.productId"

    iput-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->KALENDS_PRODUCTID:Ljava/lang/String;

    .line 18
    const-string v1, "Kunlun.debugMode"

    iput-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->KALENDS_DEBUGMODE:Ljava/lang/String;

    .line 32
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->roleInfos:Ljava/util/Map;

    .line 41
    const-string v1, "v2.0"

    iput-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->version:Ljava/lang/String;

    .line 49
    const-string v1, "Kunlun.productId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->productId:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->productId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u7814\u53d1\u65b9\u5728AndroidManifest.xml\u6587\u4ef6\u4e2d\u914d\u7f6e\u7684Kunlun.productId\u53c2\u6570\u65e0\u6548"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    :cond_0
    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    const-string v2, "Kunlun.debugMode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/core/KunlunSNS;->setDebugModel(Z)V

    .line 57
    new-instance v0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "deviceUuidFactory":Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;
    invoke-virtual {v0}, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->getDeviceUuidString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->deviceId:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleID()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->roleInfos:Ljava/util/Map;

    sget-object v1, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_ID:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRoleInfo(Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->roleInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->roleInfos:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRoleInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->roleInfos:Ljava/util/Map;

    return-object v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getSnsChannelEnum()Lcom/kunlun/sns/core/channel/ChannelEnum;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->snsChannelEnum:Lcom/kunlun/sns/core/channel/ChannelEnum;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setRoleID(Ljava/lang/String;)V
    .locals 2
    .param p1, "roleID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->roleInfos:Ljava/util/Map;

    sget-object v1, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_ID:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public setRoleInfo(Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->roleInfos:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public setServerID(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverID"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->serverID:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SdkParams [productId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->serverID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roleInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->roleInfos:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", snsChannelEnum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->snsChannelEnum:Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/core/channel/SdkParams;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
