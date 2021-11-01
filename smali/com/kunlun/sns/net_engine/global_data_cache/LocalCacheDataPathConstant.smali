.class public final Lcom/kunlun/sns/net_engine/global_data_cache/LocalCacheDataPathConstant;
.super Ljava/lang/Object;
.source "LocalCacheDataPathConstant.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalCacheDataPathConstant"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLocalCacheDirectories()V
    .locals 6

    .prologue
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "directories":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/LocalCacheDataPathConstant;->localCacheDirectoryRootPathInSDCard()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/LocalCacheDataPathConstant;->thumbnailCachePathInDevice()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    return-void

    .line 59
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 60
    .local v1, "directoryPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    const-string v3, "LocalCacheDataPathConstant"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u521b\u5efa\u91cd\u8981\u7684\u672c\u5730\u7f13\u5b58\u76ee\u5f55\u5931\u8d25, \u76ee\u5f55\u8def\u5f84\u662f-->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static directoriesCanBeClearByTheUser()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/LocalCacheDataPathConstant;->thumbnailCachePathInDevice()Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, "file":Ljava/io/File;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-object v1
.end method

.method public static getLocalCacheDataSize()J
    .locals 6

    .prologue
    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .local v2, "size":J
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/LocalCacheDataPathConstant;->directoriesCanBeClearByTheUser()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    return-wide v2

    .line 45
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 46
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/kunlun/sns/net_engine/toolutils/ToolsFunctionForThisProgect;->getDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public static localCacheDirectoryRootPathInSDCard()Ljava/io/File;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KalendsSNSSDK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "pathFile":Ljava/io/File;
    return-object v0
.end method

.method public static thumbnailCachePathInDevice()Ljava/io/File;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ThumbnailCachePath"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, "pathFile":Ljava/io/File;
    return-object v0
.end method
