.class final Lcom/kunlun/platform/android/KunlunDownloadManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunDownloadManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic au:Lcom/kunlun/platform/android/KunlunDownloadManager;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$2;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$2;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->d(Lcom/kunlun/platform/android/KunlunDownloadManager;)Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$2;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->d(Lcom/kunlun/platform/android/KunlunDownloadManager;)Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    move-result-object v0

    const/16 v1, -0x66

    const-string v2, "cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DownloadListener;->onChangeStat(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
