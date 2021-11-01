.class final Lcom/kunlun/platform/android/Kunlun$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->setInherit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$RequestDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$18;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/kunlun/platform/android/KunlunDataEntity;

    invoke-direct {v0, p1}, Lcom/kunlun/platform/android/KunlunDataEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$18;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    invoke-interface {v3, v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$RequestDataListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void
.end method

.method public final onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$18;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    const/4 v1, -0x3

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RequestDataListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void
.end method

.method public final onIOException(Ljava/io/IOException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$18;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    const/4 v1, -0x2

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RequestDataListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$18;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    const/4 v1, -0x4

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RequestDataListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void
.end method
