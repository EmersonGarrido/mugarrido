.class public final enum Lcom/kunlun/sns/core/KunlunSNS;
.super Ljava/lang/Enum;
.source "KunlunSNS.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/core/KunlunSNS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/core/KunlunSNS;

.field public static final enum getInstance:Lcom/kunlun/sns/core/KunlunSNS;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private handlerInMainLooper:Landroid/os/Handler;

.field private isDebugModel:Z

.field private isInitialized:Z

.field private sdkParams:Lcom/kunlun/sns/core/channel/SdkParams;

.field private shareChannel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/kunlun/sns/core/KunlunSNS;

    const-string v1, "getInstance"

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/core/KunlunSNS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kunlun/sns/core/KunlunSNS;

    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    aput-object v1, v0, v2

    sput-object v0, Lcom/kunlun/sns/core/KunlunSNS;->ENUM$VALUES:[Lcom/kunlun/sns/core/KunlunSNS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->TAG:Ljava/lang/String;

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->handlerInMainLooper:Landroid/os/Handler;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->shareChannel:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->isInitialized:Z

    .line 53
    return-void
.end method

.method static synthetic access$2(Lcom/kunlun/sns/core/KunlunSNS;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/kunlun/sns/core/KunlunSNS;->isInitialized:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/core/KunlunSNS;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/core/KunlunSNS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/core/KunlunSNS;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/core/KunlunSNS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/core/KunlunSNS;->ENUM$VALUES:[Lcom/kunlun/sns/core/KunlunSNS;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/core/KunlunSNS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/kunlun/sns/core/channel/SdkParams;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->sdkParams:Lcom/kunlun/sns/core/channel/SdkParams;

    return-object v0
.end method

.method public getShareChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->shareChannel:Ljava/lang/String;

    return-object v0
.end method

.method public hasInited()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->isInitialized:Z

    return v0
.end method

.method public declared-synchronized initSDK(Landroid/app/Activity;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "initResultListener":Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;, "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    const-string v9, ""

    .line 95
    .local v9, "errorMessage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/kunlun/sns/core/KunlunSNS;->isInitialized:Z

    if-eqz v12, :cond_1

    .line 96
    const-string v9, "\u4e0d\u80fd\u91cd\u590d\u8c03\u7528 initSDK \u65b9\u6cd5."

    .line 218
    :goto_0
    sget-object v12, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->getInstance:Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/kunlun/sns/core/KunlunSNS;->TAG:Ljava/lang/String;

    const-string v14, "initSDK"

    invoke-virtual {v12, v13, v14, v9}, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->recordLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v8, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    sget-object v12, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Init_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v12}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v12

    invoke-direct {v8, v12, v9}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    .line 222
    .local v8, "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    if-eqz p2, :cond_0

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kunlun/sns/core/KunlunSNS;->handlerInMainLooper:Landroid/os/Handler;

    new-instance v13, Lcom/kunlun/sns/core/KunlunSNS$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1, v8}, Lcom/kunlun/sns/core/KunlunSNS$2;-><init>(Lcom/kunlun/sns/core/KunlunSNS;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 229
    const-wide/16 v14, 0x64

    .line 224
    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    .end local v8    # "errorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-nez v12, :cond_2

    .line 102
    const-string v9, "\u5165\u53c2 activity \u7c7b\u578b\u4e0d\u6b63\u786e."

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    if-nez p2, :cond_3

    .line 108
    const-string v9, "\u5165\u53c2 initResultListener \u4e0d\u80fd\u4e3a\u7a7a."
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    goto :goto_0

    .line 117
    :cond_3
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v5, "declaredClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v12, "raw"

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v12, "id"

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    const-string v12, "layout"

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    const-string v9, "\u8bf7\u5148\u5c06\u6e38\u620f\u9879\u76ee\u5bfc\u51fa\u6210\u5b89\u5353\u9879\u76ee\uff0c\u518d\u4f7f\u7528Android-Library\u65b9\u5f0f\u5bfc\u5165SDK\uff01\u8be6\u60c5\u53c2\u9605\u63a5\u5165\u6587\u6863\uff01"

    .line 123
    const-string v12, "com.kunlun.sns.R"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v13

    array-length v14, v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, 0x0

    :goto_2
    if-lt v12, v14, :cond_4

    .line 132
    .end local v5    # "declaredClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    :try_start_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/kunlun/sns/core/KunlunSNS;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "\u6606\u4ed1\u793e\u4ea4SDK\u521d\u59cb\u5316\u5931\u8d25\uff0c\u539f\u56e0\uff1a"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 93
    .end local v9    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 123
    .restart local v5    # "declaredClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "errorMessage":Ljava/lang/String;
    :cond_4
    :try_start_4
    aget-object v10, v13, v12

    .line 124
    .local v10, "item":Ljava/lang/Class;
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 125
    const-string v9, ""
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    goto :goto_3

    .line 123
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 139
    .end local v5    # "declaredClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "item":Ljava/lang/Class;
    :cond_6
    :try_start_5
    sget-object v12, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->setApplication(Landroid/app/Application;)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-static {v12}, Lcom/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 145
    .local v3, "cacheDir":Ljava/io/File;
    new-instance v12, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/16 v13, 0x1e0

    const/16 v14, 0x320

    invoke-virtual {v12, v13, v14}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 150
    const/16 v13, 0x1e0

    const/16 v14, 0x320

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 151
    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 152
    sget-object v13, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 153
    invoke-virtual {v12}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    new-instance v13, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    const/high16 v14, 0x200000

    invoke-direct {v13, v14}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    const/high16 v13, 0x200000

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    const/16 v13, 0xd

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSizePercentage(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 154
    new-instance v13, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;

    invoke-direct {v13, v3}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;-><init>(Ljava/io/File;)V

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 155
    const/high16 v13, 0x3200000

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    const/16 v13, 0x64

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    new-instance v13, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;

    invoke-direct {v13}, Lcom/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 156
    new-instance v13, Lcom/kunlun/sns/net_engine/image_loader/MyImageDownloader;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/kunlun/sns/net_engine/image_loader/MyImageDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 157
    new-instance v13, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/kunlun/sns/core/KunlunSNS;->isDebugModel:Z

    invoke-direct {v13, v14}, Lcom/nostra13/universalimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDecoder(Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 158
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    .line 159
    invoke-virtual {v12}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v4

    .line 161
    .local v4, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 165
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_7

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_7

    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 166
    :cond_7
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "\u8bf7\u5728AndroidManifest.xml\u6587\u4ef6\u4e2d\u6b63\u786e\u5730\u914d\u7f6eSDK\u9700\u8981\u7684\u76f8\u5173\u53c2\u6570"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    .line 193
    .local v6, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    .line 195
    goto/16 :goto_0

    .line 172
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_8
    :try_start_8
    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "Kunlun.sns_channel"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/kunlun/sns/core/channel/ChannelEnum;->valueOfName(Ljava/lang/String;)Lcom/kunlun/sns/core/channel/ChannelEnum;

    move-result-object v11

    .line 173
    .local v11, "snsChannelEnum":Lcom/kunlun/sns/core/channel/ChannelEnum;
    if-nez v11, :cond_9

    .line 174
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "AndroidManifest.xml\u6587\u4ef6\u4e2d\u914d\u7f6e\u7684Kunlun.sns_channel\u53c2\u6570\u65e0\u6548(\u672a\u914d\u7f6e\u6216\u8005\u914d\u7f6e\u4e86\u5f53\u524d\u4e0d\u652f\u6301\u7684SNS\u6e20\u9053)"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    .line 180
    :cond_9
    invoke-static {v11}, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->initWithSNSChannel(Lcom/kunlun/sns/core/channel/ChannelEnum;)V

    .line 181
    invoke-static {}, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->getEngineHelper()Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;

    move-result-object v7

    .line 186
    .local v7, "engineHelperForSdk":Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;
    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-interface {v7, v12}, Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;->getSdkParams(Landroid/os/Bundle;)Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kunlun/sns/core/KunlunSNS;->sdkParams:Lcom/kunlun/sns/core/channel/SdkParams;

    .line 187
    iget-object v12, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "Kunlun.shareChannel"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/kunlun/sns/core/KunlunSNS;->shareChannel:Ljava/lang/String;

    .line 191
    sget-object v12, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    invoke-virtual {v12, v7}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->setEngineHelper(Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IEngineHelper;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 201
    :try_start_9
    invoke-static {}, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->getEngineHelper()Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;

    move-result-object v12

    invoke-interface {v12}, Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;->getIChannelInitializer()Lcom/kunlun/sns/core/channel/IChannelInitializer;

    move-result-object v12

    new-instance v13, Lcom/kunlun/sns/core/KunlunSNS$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v13, v0, v1}, Lcom/kunlun/sns/core/KunlunSNS$1;-><init>(Lcom/kunlun/sns/core/KunlunSNS;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v13}, Lcom/kunlun/sns/core/channel/IChannelInitializer;->initialize(Landroid/app/Activity;Lcom/kunlun/sns/core/channel/IChannelInitializer$OnInitializeListener;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 129
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "cacheDir":Ljava/io/File;
    .end local v4    # "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .end local v7    # "engineHelperForSdk":Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;
    .end local v11    # "snsChannelEnum":Lcom/kunlun/sns/core/channel/ChannelEnum;
    :catch_1
    move-exception v12

    goto/16 :goto_3
.end method

.method public isDebugModel()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->isDebugModel:Z

    return v0
.end method

.method public requestCommand(Ljava/lang/Object;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;)",
            "Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "requestBean":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/kunlun/sns/core/KunlunSNS;->requestCommand(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public requestCommand(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 11
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
    .line 259
    .local p1, "requestBean":Ljava/lang/Object;, "TK;"
    .local p2, "respondBeanAsyncResponseListener":Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;, "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener<TV;>;"
    new-instance v4, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;

    invoke-direct {v4}, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;-><init>()V

    .line 262
    .local v4, "netRequestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    :try_start_0
    iget-boolean v7, p0, Lcom/kunlun/sns/core/KunlunSNS;->isInitialized:Z

    if-nez v7, :cond_2

    .line 263
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "SDK\u5f15\u64ce\u6ca1\u6709\u521d\u59cb\u5316\u6210\u529f, \u8bf7\u5148\u8c03\u7528 initSDK \u65b9\u6cd5\u8fdb\u884c\u521d\u59cb\u5316."

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->getInstance:Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    iget-object v8, p0, Lcom/kunlun/sns/core/KunlunSNS;->TAG:Ljava/lang/String;

    const-string v9, "requestDomainBean"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->recordLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    if-eqz p2, :cond_0

    .line 315
    new-instance v7, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    sget-object v8, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v8}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v7}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;->onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 319
    :cond_0
    instance-of v7, p2, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    if-eqz v7, :cond_1

    .line 320
    check-cast p2, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    .end local p2    # "respondBeanAsyncResponseListener":Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;, "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener<TV;>;"
    invoke-interface {p2}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;->onEnd()V

    .line 324
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-object v4

    .line 268
    .restart local p2    # "respondBeanAsyncResponseListener":Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;, "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener<TV;>;"
    :cond_2
    if-nez p1, :cond_3

    .line 269
    :try_start_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "\u5165\u53c2 requestBean \u4e3a\u7a7a."

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 273
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 274
    .local v6, "requestBeanName":Ljava/lang/String;
    iget-object v7, p0, Lcom/kunlun/sns/core/KunlunSNS;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "============== \u8bf7\u6c42\u6a21\u578b "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "============== \n\u5b8c\u6574\u5305\u540d"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lcom/kunlun/sns/core/channel/EngineHelperFactoryMethod;->getEngineHelper()Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;

    move-result-object v7

    invoke-interface {v7}, Lcom/kunlun/sns/core/channel/IEngineHelperForSdk;->getSdkCommandRequestBeanAndStrategyMapping()Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;

    move-result-object v7

    .line 280
    invoke-interface {v7, v6}, Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/interfaces/IRequestBeanAndStrategyMapping;->getStrategyByRequestBeanName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    .line 281
    .local v3, "handleStrategy":Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;, "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy<TK;TV;>;"
    instance-of v7, v3, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;

    if-nez v7, :cond_4

    .line 282
    new-instance v7, Ljava/lang/NullPointerException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " \u5fc5\u987b\u5b9e\u73b0 PublisherHandleStrategy \u63a5\u53e3"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 295
    :cond_4
    new-instance v2, Ljava/util/concurrent/FutureTask;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 296
    .local v2, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<TV;>;"
    invoke-virtual {v3, v2}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->setFuture(Ljava/util/concurrent/Future;)V

    .line 297
    iget-object v7, p0, Lcom/kunlun/sns/core/KunlunSNS;->handlerInMainLooper:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->setHandlerInMainLooper(Landroid/os/Handler;)V

    .line 298
    invoke-virtual {v3, p1}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->setNetRequestBean(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v3, p2}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;->setDomainBeanAsyncHttpResponseListener(Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)V

    .line 300
    iget-object v7, p0, Lcom/kunlun/sns/core/KunlunSNS;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v7, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 305
    instance-of v7, p2, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    if-eqz v7, :cond_5

    .line 306
    move-object v0, p2

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;

    move-object v7, v0

    invoke-interface {v7}, Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;->onBegin()V

    .line 308
    :cond_5
    new-instance v5, Lcom/kunlun/sns/core/channel/SDKRequestHandleOfFuture;

    invoke-direct {v5, v2}, Lcom/kunlun/sns/core/channel/SDKRequestHandleOfFuture;-><init>(Ljava/util/concurrent/Future;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "netRequestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .local v5, "netRequestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    move-object v4, v5

    .end local v5    # "netRequestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .restart local v4    # "netRequestHandle":Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    goto/16 :goto_0
.end method

.method public setDebugModel(Z)V
    .locals 3
    .param p1, "isDebugModel"    # Z

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->TAG:Ljava/lang/String;

    const-string v1, "\u6b63\u5728\u8fd0\u884cDebug\u7248\u672c"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v0}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "\u6e29\u99a8\u63d0\u793a\uff1a\u6b63\u5728\u8fd0\u884cDebug\u7248\u672c"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 335
    :goto_0
    iput-boolean p1, p0, Lcom/kunlun/sns/core/KunlunSNS;->isDebugModel:Z

    .line 338
    iget-boolean v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->isDebugModel:Z

    sput-boolean v0, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->logIsOpen:Z

    .line 339
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/core/KunlunSNS;->TAG:Ljava/lang/String;

    const-string v1, "\u6b63\u5728\u8fd0\u884cRelease\u7248\u672c"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
