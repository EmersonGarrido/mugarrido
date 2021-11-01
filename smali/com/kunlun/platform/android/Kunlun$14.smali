.class final Lcom/kunlun/platform/android/Kunlun$14;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->asyncRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic E:Ljava/lang/String;

.field private final synthetic F:Ljava/lang/String;

.field private final synthetic G:Landroid/os/Bundle;

.field private final synthetic H:Lcom/kunlun/platform/android/Kunlun$RequestListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$14;->E:Ljava/lang/String;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$14;->F:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/Kunlun$14;->G:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/kunlun/platform/android/Kunlun$14;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$14;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$14;->F:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$14;->G:Landroid/os/Bundle;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$14;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-interface {v1, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Kunlun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":onFileNotFoundException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$14;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-interface {v1, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Kunlun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":MalformedURLException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$14;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-interface {v1, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;)V

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "Kunlun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":IOException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$14;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-interface {v1, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method
