.class public Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
.super Ljava/lang/Object;
.source "SignalLocationUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final bssid:Ljava/lang/String;

.field public final dBm:I

.field public final ssid:Ljava/lang/String;

.field final synthetic this$1:Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;


# direct methods
.method public constructor <init>(Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p2, "scanresult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->this$1:Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iget-object v1, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 363
    .local v1, "s":Ljava/lang/String;
    iput-object v1, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->bssid:Ljava/lang/String;

    .line 364
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    .line 365
    .local v0, "i":I
    iput v0, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 366
    iget-object v2, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 367
    .local v2, "s1":Ljava/lang/String;
    iput-object v2, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->ssid:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public constructor <init>(Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "i"    # I
    .param p4, "s1"    # Ljava/lang/String;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->this$1:Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p2, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->bssid:Ljava/lang/String;

    .line 373
    iput p3, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 374
    iput-object p4, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->ssid:Ljava/lang/String;

    .line 375
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;)I
    .locals 3
    .param p1, "wifiinfo"    # Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;

    .prologue
    .line 271
    iget v0, p1, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 272
    .local v0, "i":I
    iget v1, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 273
    .local v1, "j":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;

    invoke-virtual {p0, p1}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->compareTo(Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "flag":Z
    if-ne p1, p0, :cond_0

    .line 281
    const/4 v0, 0x1

    move v1, v0

    .line 308
    .end local v0    # "flag":Z
    .local v1, "flag":I
    :goto_0
    return v1

    .line 286
    .end local v1    # "flag":I
    .restart local v0    # "flag":Z
    :cond_0
    instance-of v7, p1, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;

    if-eqz v7, :cond_2

    move-object v6, p1

    .line 288
    check-cast v6, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;

    .line 289
    .local v6, "wifiinfo":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    iget v2, v6, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 290
    .local v2, "i":I
    iget v3, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 291
    .local v3, "j":I
    if-ne v2, v3, :cond_1

    .line 293
    iget-object v4, v6, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->bssid:Ljava/lang/String;

    .line 294
    .local v4, "s":Ljava/lang/String;
    iget-object v5, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->bssid:Ljava/lang/String;

    .line 295
    .local v5, "s1":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    const/4 v0, 0x1

    move v1, v0

    .line 297
    .restart local v1    # "flag":I
    goto :goto_0

    .line 300
    .end local v1    # "flag":I
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "s1":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v6    # "wifiinfo":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;
    :goto_1
    move v1, v0

    .line 308
    .restart local v1    # "flag":I
    goto :goto_0

    .line 304
    .end local v1    # "flag":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 314
    iget v0, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 315
    .local v0, "i":I
    iget-object v2, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 316
    .local v1, "j":I
    xor-int v2, v0, v1

    return v2
.end method

.method public info()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 321
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 324
    .local v1, "jsonobject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->bssid:Ljava/lang/String;

    .line 325
    .local v2, "s":Ljava/lang/String;
    const-string v4, "mac"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    iget-object v3, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->ssid:Ljava/lang/String;

    .line 327
    .local v3, "s1":Ljava/lang/String;
    const-string v4, "ssid"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    iget v0, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 329
    .local v0, "i":I
    const-string v4, "dbm"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v0    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s1":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 332
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public wifi_tower()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 340
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 343
    .local v1, "jsonobject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->bssid:Ljava/lang/String;

    .line 344
    .local v2, "s":Ljava/lang/String;
    const-string v4, "mac_address"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 345
    iget v0, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->dBm:I

    .line 346
    .local v0, "i":I
    const-string v4, "signal_strength"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 347
    iget-object v3, p0, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager$WifiInfo;->ssid:Ljava/lang/String;

    .line 348
    .local v3, "s1":Ljava/lang/String;
    const-string v4, "ssid"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v4, "age"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v0    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s1":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 351
    :catch_0
    move-exception v4

    goto :goto_0
.end method
