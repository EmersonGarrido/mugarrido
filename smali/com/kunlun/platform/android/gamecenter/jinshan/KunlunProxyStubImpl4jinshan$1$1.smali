.class final Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->onLoginResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gZ:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;->gZ:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;->gZ:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;

    return-object v0
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;->gZ:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->e(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;->gZ:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->e(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;->gZ:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->b(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KS_GAME_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;->gZ:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->d(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
