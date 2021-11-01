.class public Lcom/kunlun/platform/android/KunlunDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ac:Ljava/lang/String;

.field private static ad:Ljava/lang/String;

.field private static ae:Ljava/lang/String;

.field private static af:Ljava/lang/String;

.field private static ag:Ljava/lang/String;

.field private static ah:Ljava/lang/String;

.field private static ai:Ljava/lang/String;

.field private static aj:Ljava/lang/String;

.field private static ak:Ljava/lang/String;

.field private static al:Ljava/lang/String;

.field private static volatile am:Lcom/kunlun/platform/android/KunlunDownloadManager;


# instance fields
.field private an:Z

.field private ao:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kunlun/platform/android/download/Downloader;",
            ">;"
        }
    .end annotation
.end field

.field private ap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Notice"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ac:Ljava/lang/String;

    const-string v0, "Ready to download"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ad:Ljava/lang/String;

    const-string v0, "Cancel"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ae:Ljava/lang/String;

    const-string v0, "Continue"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->af:Ljava/lang/String;

    const-string v0, "Version"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ag:Ljava/lang/String;

    const-string v0, "Downloading"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ah:Ljava/lang/String;

    const-string v0, "File size"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ai:Ljava/lang/String;

    const-string v0, "Cancel download"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->aj:Ljava/lang/String;

    const-string v0, "Running in the background"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ak:Ljava/lang/String;

    const-string v0, "Download failed"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->al:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ao:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ap:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->aq:Z

    iput-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ar:Z

    iput-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->as:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    new-instance v0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/KunlunDownloadManager$1;-><init>(Lcom/kunlun/platform/android/KunlunDownloadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic O()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->al:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunDownloadManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ap:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v7

    :goto_0
    new-instance v0, Lcom/kunlun/platform/android/download/Downloader;

    iget-object v8, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->mHandler:Landroid/os/Handler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/kunlun/platform/android/download/Downloader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ao:Ljava/util/Map;

    invoke-interface {v1, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/download/Downloader;->download()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p6}, Lcom/kunlun/platform/android/KunlunDownloadManager;->d(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v7, ""

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    const-string v2, "loading"

    invoke-interface {v1, v0, v2}, Lcom/kunlun/platform/android/Kunlun$DownloadListener;->onChangeStat(ILjava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunDownloadManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/kunlun/platform/android/KunlunDownloadManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunDownloadManager;Lcom/kunlun/platform/android/download/DownloadInfo;)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-nez v0, :cond_4

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/kunlun/platform/android/KunlunDownloadManager;->ah:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-virtual {p1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getTotalSize()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/kunlun/platform/android/KunlunDownloadManager;->ai:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->aq:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kunlun/platform/android/KunlunDownloadManager;->aj:Ljava/lang/String;

    new-instance v2, Lcom/kunlun/platform/android/KunlunDownloadManager$5;

    invoke-direct {v2, p0, p1}, Lcom/kunlun/platform/android/KunlunDownloadManager$5;-><init>(Lcom/kunlun/platform/android/KunlunDownloadManager;Lcom/kunlun/platform/android/download/DownloadInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    iget-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->as:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kunlun/platform/android/KunlunDownloadManager;->ak:Ljava/lang/String;

    new-instance v2, Lcom/kunlun/platform/android/KunlunDownloadManager$6;

    invoke-direct {v2, p0, p1}, Lcom/kunlun/platform/android/KunlunDownloadManager$6;-><init>(Lcom/kunlun/platform/android/KunlunDownloadManager;Lcom/kunlun/platform/android/download/DownloadInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->an:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getTotalSize()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->an:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_5
    invoke-virtual {p1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunDownloadManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/KunlunDownloadManager;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunDownloadManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/KunlunDownloadManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->aq:Z

    return v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/KunlunDownloadManager;)Lcom/kunlun/platform/android/Kunlun$DownloadListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    const/4 v1, 0x2

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DownloadListener;->onChangeStat(ILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ao:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ao:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/download/Downloader;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/download/Downloader;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    const/4 v1, 0x3

    const-string v2, "setuping"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DownloadListener;->onChangeStat(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/KunlunDownloadManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ao:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/KunlunDownloadManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->an:Z

    return-void
.end method

.method public static getInstance()Lcom/kunlun/platform/android/KunlunDownloadManager;
    .locals 2

    sget-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->am:Lcom/kunlun/platform/android/KunlunDownloadManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/kunlun/platform/android/KunlunDownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->am:Lcom/kunlun/platform/android/KunlunDownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->am:Lcom/kunlun/platform/android/KunlunDownloadManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string v0, "tw"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u4e0b\u8f09\u63d0\u793a"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ac:Ljava/lang/String;

    const-string v0, "\u6e96\u5099\u4e0b\u8f09"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ad:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ae:Ljava/lang/String;

    const-string v0, "\u7e7c\u7e8c"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->af:Ljava/lang/String;

    const-string v0, "\u8edf\u4ef6\u7248\u672c"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ag:Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u4e0b\u8f09"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ah:Ljava/lang/String;

    const-string v0, "\u8edf\u4ef6\u5927\u5c0f"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ai:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88\u4e0b\u8f09"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->aj:Ljava/lang/String;

    const-string v0, "\u5f8c\u53f0\u904b\u884c"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ak:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f09\u5931\u6557"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->al:Ljava/lang/String;

    :cond_2
    :goto_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->am:Lcom/kunlun/platform/android/KunlunDownloadManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4e0b\u8f7d\u63d0\u793a"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ac:Ljava/lang/String;

    const-string v0, "\u51c6\u5907\u4e0b\u8f7d"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ad:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ae:Ljava/lang/String;

    const-string v0, "\u7ee7\u7eed"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->af:Ljava/lang/String;

    const-string v0, "\u8f6f\u4ef6\u7248\u672c"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ag:Ljava/lang/String;

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ah:Ljava/lang/String;

    const-string v0, "\u8f6f\u4ef6\u5927\u5c0f"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ai:Ljava/lang/String;

    const-string v0, "\u53d6\u6d88\u4e0b\u8f7d"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->aj:Ljava/lang/String;

    const-string v0, "\u540e\u53f0\u8fd0\u884c"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ak:Ljava/lang/String;

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    sput-object v0, Lcom/kunlun/platform/android/KunlunDownloadManager;->al:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setupComplete(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/download/DownloadDBHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->getInfoByPackage(Ljava/lang/String;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v2

    const-string v3, "KunlunDownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/kunlun/platform/android/download/DownloadInfo;->getIsSend()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/kunlun/platform/android/download/DownloadInfo;->getTotalSize()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://api.kgc.kimi.com.tw/?act=Convert.install&deviceId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getDeviceUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kunlun/platform/android/download/DownloadInfo;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "GET"

    new-instance v5, Lcom/kunlun/platform/android/KunlunDownloadManager$4;

    invoke-direct {v5, v2, v1}, Lcom/kunlun/platform/android/KunlunDownloadManager$4;-><init>(Lcom/kunlun/platform/android/download/DownloadInfo;Lcom/kunlun/platform/android/download/DownloadDBHelper;)V

    invoke-static {v0, v3, v4, v5}, Lcom/kunlun/platform/android/Kunlun;->asyncRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(ZZZLcom/kunlun/platform/android/Kunlun$DownloadListener;)Lcom/kunlun/platform/android/KunlunDownloadManager;
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->aq:Z

    iput-boolean p2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ar:Z

    iput-boolean p3, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->as:Z

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    return-object p0
.end method

.method public start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->an:Z

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ao:Ljava/util/Map;

    move-object/from16 v0, p6

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kunlun/platform/android/download/Downloader;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    const/4 v3, 0x0

    const-string v4, "start"

    invoke-interface {v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun$DownloadListener;->onChangeStat(ILjava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/kunlun/platform/android/download/Downloader;->download()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->at:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    const-string v3, "loading"

    invoke-interface {v2, v1, v3}, Lcom/kunlun/platform/android/Kunlun$DownloadListener;->onChangeStat(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->ar:Z

    if-eqz v1, :cond_5

    new-instance v9, Lcom/kunlun/platform/widget/KunlunDialog;

    invoke-direct {v9, p1}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setCancelable(Z)V

    sget-object v1, Lcom/kunlun/platform/android/KunlunDownloadManager;->ac:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/kunlun/platform/android/KunlunDownloadManager;->ad:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/kunlun/platform/android/KunlunDownloadManager;->ag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager;->aq:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/kunlun/platform/android/KunlunDownloadManager;->ae:Ljava/lang/String;

    new-instance v2, Lcom/kunlun/platform/android/KunlunDownloadManager$2;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunDownloadManager$2;-><init>(Lcom/kunlun/platform/android/KunlunDownloadManager;)V

    invoke-virtual {v9, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    sget-object v10, Lcom/kunlun/platform/android/KunlunDownloadManager;->af:Ljava/lang/String;

    new-instance v1, Lcom/kunlun/platform/android/KunlunDownloadManager$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/kunlun/platform/android/KunlunDownloadManager$3;-><init>(Lcom/kunlun/platform/android/KunlunDownloadManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v9}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    goto :goto_0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/kunlun/platform/android/KunlunDownloadManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
