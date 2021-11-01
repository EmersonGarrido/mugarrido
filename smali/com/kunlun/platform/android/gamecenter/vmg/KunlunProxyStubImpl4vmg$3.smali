.class final Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;
.super Lcom/kunlun/platform/widget/KunlunProgressDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

.field private ku:Z


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-direct {p0, p2, p3}, Lcom/kunlun/platform/widget/KunlunProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ku:Z

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->onWindowFocusChanged(Z)V

    const-string v0, "KunlunProxyStubImpl4vmg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowFocusChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":isFirst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ku:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":login:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->c(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ku:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ku:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lvn/com/vnptepay/openID/Vnptepay;

    move-result-object v0

    invoke-virtual {v0}, Lvn/com/vnptepay/openID/Vnptepay;->login()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->setCancelable(Z)V

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->g(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
