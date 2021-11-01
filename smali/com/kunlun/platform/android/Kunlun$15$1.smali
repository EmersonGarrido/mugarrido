.class final Lcom/kunlun/platform/android/Kunlun$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun$15;->onComplete(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic I:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->I:Ljava/lang/String;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->p:Landroid/content/Context;

    iput-object p3, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/kunlun/platform/android/KunlunEntity;

    invoke-direct {v0, p1}, Lcom/kunlun/platform/android/KunlunEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getRetCode()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fbtoken"

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->I:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/Kunlun;->a(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getRetCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x3

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onIOException(Ljava/io/IOException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x2

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$15$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x4

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method
