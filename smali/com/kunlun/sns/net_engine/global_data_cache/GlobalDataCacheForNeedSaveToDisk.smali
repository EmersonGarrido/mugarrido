.class public final Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;
.super Ljava/lang/Object;
.source "GlobalDataCacheForNeedSaveToDisk.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-class v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->TAG:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v0}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "KalendsSNSSDK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static deserializeObjectFromDeviceFileSystem(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 174
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v4}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    :try_start_0
    sget-object v3, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v3}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 180
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->deserializeObjectFromFile(Ljava/io/FileInputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 181
    .end local v2    # "fin":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deserializeObjectFromDeviceFileSystem-->openFileInput\u5931\u8d25, \u5931\u8d25\u539f\u56e0="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static deserializeObjectFromFile(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .locals 6
    .param p0, "fileInputStream"    # Ljava/io/FileInputStream;

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "object":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 205
    .local v3, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v4, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 212
    if-eqz v4, :cond_0

    .line 213
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 220
    :cond_0
    :goto_0
    if-eqz p0, :cond_5

    .line 221
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    .line 228
    .end local v2    # "object":Ljava/lang/Object;
    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_1
    return-object v2

    .line 207
    .restart local v2    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 208
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x0

    .line 209
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    if-eqz v3, :cond_2

    .line 213
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 220
    :cond_2
    :goto_3
    if-eqz p0, :cond_1

    .line 221
    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 223
    :catch_1
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 212
    :goto_4
    if-eqz v3, :cond_3

    .line 213
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 220
    :cond_3
    :goto_5
    if-eqz p0, :cond_4

    .line 221
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 226
    :cond_4
    :goto_6
    throw v5

    .line 215
    :catch_3
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 224
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 215
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v0

    .line 216
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 224
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    move-object v3, v4

    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 210
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 207
    .end local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v3    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method private static deserializeObjectFromSDCard(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "directoryPath"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v1, 0x0

    .line 193
    .local v1, "object":Ljava/lang/Object;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->deserializeObjectFromFile(Ljava/io/FileInputStream;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    .end local v1    # "object":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 194
    .restart local v1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static readAllCacheData()V
    .locals 0

    .prologue
    .line 64
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->readAppConfingInfo()V

    .line 65
    return-void
.end method

.method public static declared-synchronized readAppConfingInfo()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static readIsFirstStartApp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 252
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->IsFirstStartApp:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readKakaoAccessToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->KakaoAccessToken:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readKakaoRefreshToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->KakaoRefreshToken:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized readLastKKuid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    const-class v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->LastKKuid:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static serializeObjectToDeviceFileSystem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v3}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 123
    :cond_2
    :try_start_0
    sget-object v2, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->serializeObjectToFile(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static serializeObjectToFile(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fileOutputStream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 130
    const/4 v2, 0x0

    .line 134
    .local v2, "objectOutputStream":Ljava/io/ObjectOutputStream;
    if-nez p1, :cond_3

    .line 150
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 151
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 158
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 159
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 166
    :cond_2
    :goto_2
    return-void

    .line 137
    :cond_3
    if-eqz p0, :cond_0

    .line 141
    :try_start_2
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v3, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    if-eqz v2, :cond_4

    .line 151
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 158
    :cond_4
    :goto_4
    if-eqz p1, :cond_2

    .line 159
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 161
    :catch_1
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 150
    :goto_5
    if-eqz v2, :cond_5

    .line 151
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 158
    :cond_5
    :goto_6
    if-eqz p1, :cond_6

    .line 159
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 164
    :cond_6
    :goto_7
    throw v4

    .line 153
    :catch_3
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 162
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v0

    .line 162
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    goto :goto_5

    .line 146
    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    goto :goto_3
.end method

.method private static serializeObjectToSDCard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "directoryPath"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 101
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 106
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p2, v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->serializeObjectToFile(Ljava/lang/Object;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static writeAccessTokenAndRefreshToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "accessToken"    # Ljava/lang/String;
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->KakaoAccessToken:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->KakaoRefreshToken:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->KakaoAccessToken:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->KakaoRefreshToken:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static writeAllCacheData()V
    .locals 0

    .prologue
    .line 88
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->writeAppConfigInfo()V

    .line 89
    return-void
.end method

.method public static declared-synchronized writeAppConfigInfo()V
    .locals 1

    .prologue
    .line 76
    const-class v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static writeIsFirstStartApp(Ljava/lang/String;)V
    .locals 2
    .param p0, "flag"    # Ljava/lang/String;

    .prologue
    .line 248
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->IsFirstStartApp:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 249
    return-void
.end method

.method public static declared-synchronized writeLastKKuid(Ljava/lang/String;)V
    .locals 3
    .param p0, "lastKKuid"    # Ljava/lang/String;

    .prologue
    .line 79
    const-class v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v2, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->LastKKuid:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;

    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForNeedSaveToDisk$CacheDataNameForSaveToDisk;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v1

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
