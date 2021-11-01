.class public Lcom/kunlun/platform/android/download/Downloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/download/Downloader$MyThread;
    }
.end annotation


# instance fields
.field private ea:Lcom/kunlun/platform/android/download/DownloadDBHelper;

.field private eb:Lcom/kunlun/platform/android/download/DownloadInfo;

.field private ec:Z

.field private file:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/kunlun/platform/android/download/Downloader;->ec:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/kunlun/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lcom/kunlun/platform/android/KunlunUtil;->isWrite(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_2

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/kunlun/platform/android/download/Downloader;->mHandler:Landroid/os/Handler;

    invoke-static/range {p1 .. p1}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/download/DownloadDBHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->ea:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->ea:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->getInfo(Ljava/lang/String;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    if-nez v3, :cond_3

    new-instance v2, Lcom/kunlun/platform/android/download/DownloadInfo;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v14, p7

    invoke-direct/range {v2 .. v15}, Lcom/kunlun/platform/android/download/DownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    const/4 v2, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/kunlun/platform/android/download/DownloadInfo;->setAppName(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/kunlun/platform/android/download/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->setPackageName(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/kunlun/platform/android/download/DownloadInfo;->setVersionCode(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/kunlun/platform/android/download/DownloadInfo;->setVersionName(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/kunlun/platform/android/download/DownloadInfo;->setUserId(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/kunlun/platform/android/download/Downloader;->ea:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->saveInfo(Lcom/kunlun/platform/android/download/DownloadInfo;)V

    :cond_9
    const-string v2, "com.kunlun.platform.android.download.Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/download/Downloader;I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/download/Downloader;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    return v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/download/Downloader;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadDBHelper;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->ea:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/download/Downloader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/download/Downloader;->ec:Z

    return v0
.end method


# virtual methods
.method public download()I
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->ea:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget v0, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    :goto_0
    return v0

    :cond_1
    iput-boolean v6, p0, Lcom/kunlun/platform/android/download/Downloader;->ec:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/download/DownloadInfo;->getTotalSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/download/DownloadInfo;->getTotalSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    iget v0, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->setCompeleteSize(J)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->setLastModified(J)V

    :goto_1
    iget v0, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    if-gtz v0, :cond_3

    iput v6, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    new-instance v0, Lcom/kunlun/platform/android/download/Downloader$MyThread;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/download/Downloader$MyThread;-><init>(Lcom/kunlun/platform/android/download/Downloader;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/download/Downloader$MyThread;->start()V

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget v0, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->ea:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->delete(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0, v4, v5}, Lcom/kunlun/platform/android/download/DownloadInfo;->setTotalSize(J)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0, v4, v5}, Lcom/kunlun/platform/android/download/DownloadInfo;->setCompeleteSize(J)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0, v4, v5}, Lcom/kunlun/platform/android/download/DownloadInfo;->setLastModified(J)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->eb:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0, v2}, Lcom/kunlun/platform/android/download/DownloadInfo;->setIsSend(I)V

    goto :goto_1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader;->file:Ljava/io/File;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/download/Downloader;->ec:Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/kunlun/platform/android/download/Downloader;->state:I

    return-void
.end method
