.class public Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;
.super Ljava/lang/Object;
.source "DeviceUUIDFactory.java"


# instance fields
.field private final PREFS_DEVICE_ID:Ljava/lang/String;

.field private final PREFS_FILE:Ljava/lang/String;

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v5, "kunlun_fb_sdk_device_id.xml"

    iput-object v5, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->PREFS_FILE:Ljava/lang/String;

    .line 13
    const-string v5, "device_id"

    iput-object v5, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->PREFS_DEVICE_ID:Ljava/lang/String;

    .line 17
    iget-object v5, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    if-nez v5, :cond_1

    .line 18
    const-class v6, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;

    monitor-enter v6

    .line 19
    :try_start_0
    iget-object v5, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    if-nez v5, :cond_0

    .line 20
    const-string v5, "kunlun_fb_sdk_device_id.xml"

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 21
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "device_id"

    const/4 v7, 0x0

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "id":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 23
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5

    iput-object v5, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    .line 18
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    monitor-exit v6

    .line 42
    :cond_1
    return-void

    .line 25
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "android_id"

    invoke-static {v5, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 27
    .local v0, "androidId":Ljava/lang/String;
    :try_start_1
    const-string v5, "9774d56d682e549c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 28
    const-string v5, "utf8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v5

    iput-object v5, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->uuid:Ljava/util/UUID;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v7, "device_id"

    iget-object v8, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 18
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 30
    .restart local v0    # "androidId":Ljava/lang/String;
    .restart local v3    # "id":Ljava/lang/String;
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_3
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "deviceId":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v5, "utf8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v5

    :goto_2
    iput-object v5, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->uuid:Ljava/util/UUID;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 33
    .end local v1    # "deviceId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 34
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    iput-object v5, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    .line 35
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "deviceId":Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v5

    goto :goto_2
.end method


# virtual methods
.method public getDeviceUuidString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/toolutils/DeviceUUIDFactory;->uuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
