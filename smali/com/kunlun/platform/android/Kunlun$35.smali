.class final Lcom/kunlun/platform/android/Kunlun$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic s:Lcom/kunlun/platform/android/Kunlun$RegistListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$RegistListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$35;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/kunlun/platform/android/KunlunEntity;

    invoke-direct {v0, p1}, Lcom/kunlun/platform/android/KunlunEntity;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setUser(Lcom/kunlun/platform/android/KunlunEntity;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getRetCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$35;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    invoke-interface {v3, v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$RegistListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 4

    const-string v0, "Kunlun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":thirdPartyLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$35;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    const/4 v1, -0x3

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RegistListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onIOException(Ljava/io/IOException;)V
    .locals 4

    const-string v0, "Kunlun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":thirdPartyLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$35;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    const/4 v1, -0x2

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RegistListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 4

    const-string v0, "Kunlun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":thirdPartyLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$35;->s:Lcom/kunlun/platform/android/Kunlun$RegistListener;

    const/4 v1, -0x4

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RegistListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method
