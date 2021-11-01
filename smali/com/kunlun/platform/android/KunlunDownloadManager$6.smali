.class final Lcom/kunlun/platform/android/KunlunDownloadManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic au:Lcom/kunlun/platform/android/KunlunDownloadManager;

.field private final synthetic ay:Lcom/kunlun/platform/android/download/DownloadInfo;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunDownloadManager;Lcom/kunlun/platform/android/download/DownloadInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$6;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$6;->ay:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$6;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->e(Lcom/kunlun/platform/android/KunlunDownloadManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$6;->ay:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/download/Downloader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/download/Downloader;->hide()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$6;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->f(Lcom/kunlun/platform/android/KunlunDownloadManager;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
