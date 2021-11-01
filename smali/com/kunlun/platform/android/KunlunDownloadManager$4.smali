.class final Lcom/kunlun/platform/android/KunlunDownloadManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunDownloadManager;->setupComplete(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic aw:Lcom/kunlun/platform/android/download/DownloadInfo;

.field private final synthetic ax:Lcom/kunlun/platform/android/download/DownloadDBHelper;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/download/DownloadInfo;Lcom/kunlun/platform/android/download/DownloadDBHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->ax:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->setIsSend(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->ax:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->saveInfo(Lcom/kunlun/platform/android/download/DownloadInfo;)V

    return-void
.end method

.method public final onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->setIsSend(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->ax:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->saveInfo(Lcom/kunlun/platform/android/download/DownloadInfo;)V

    return-void
.end method

.method public final onIOException(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->setIsSend(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->ax:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->saveInfo(Lcom/kunlun/platform/android/download/DownloadInfo;)V

    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->setIsSend(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->ax:Lcom/kunlun/platform/android/download/DownloadDBHelper;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$4;->aw:Lcom/kunlun/platform/android/download/DownloadInfo;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->saveInfo(Lcom/kunlun/platform/android/download/DownloadInfo;)V

    return-void
.end method
