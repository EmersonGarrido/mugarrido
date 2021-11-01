.class Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;
.super Ljava/lang/Object;
.source "SignalLocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tianmashikong/tool/SignalLocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiInfoManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    }
.end annotation


# instance fields
.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "mgr"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    return-void
.end method


# virtual methods
.method public dump()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v2, "lsAllWIFI":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;>;"
    iget-object v9, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v2

    .line 197
    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 198
    .local v8, "wifiConnection":Landroid/net/wifi/WifiInfo;
    const/4 v0, 0x0

    .line 199
    .local v0, "currentWIFI":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    if-eqz v8, :cond_2

    .line 201
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    .line 203
    .local v1, "i":I
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    .line 204
    .local v6, "s1":Ljava/lang/String;
    new-instance v0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;

    .end local v0    # "currentWIFI":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    invoke-direct {v0, p0, v5, v1, v6}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;-><init>(Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 207
    .end local v1    # "i":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "s1":Ljava/lang/String;
    .restart local v0    # "currentWIFI":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    :cond_2
    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_3
    iget-object v9, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 213
    .local v3, "lsScanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 215
    .local v4, "result":Landroid/net/wifi/ScanResult;
    new-instance v7, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;

    invoke-direct {v7, p0, v4}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;-><init>(Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;Landroid/net/wifi/ScanResult;)V

    .line 216
    .local v7, "scanWIFI":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    invoke-virtual {v7, v0}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 217
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 220
    .end local v0    # "currentWIFI":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    .end local v3    # "lsScanResult":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v7    # "scanWIFI":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    .end local v8    # "wifiConnection":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public wifiInfo()Lorg/json/JSONArray;
    .locals 5

    .prologue
    .line 234
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 235
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->dump()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 240
    return-object v0

    .line 235
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;

    .line 237
    .local v2, "wifi":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    invoke-virtual {v2}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->info()Lorg/json/JSONObject;

    move-result-object v1

    .line 238
    .local v1, "localJSONObject":Lorg/json/JSONObject;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public wifiManager()Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->wifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public wifiTowers()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 250
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 253
    .local v0, "jsonArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p0}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->dump()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 254
    .local v1, "localObject":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 264
    .end local v1    # "localObject":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;>;"
    :goto_1
    return-object v0

    .line 256
    .restart local v1    # "localObject":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;

    invoke-virtual {v2}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->wifi_tower()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v1    # "localObject":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;>;"
    :catch_0
    move-exception v2

    goto :goto_1
.end method
