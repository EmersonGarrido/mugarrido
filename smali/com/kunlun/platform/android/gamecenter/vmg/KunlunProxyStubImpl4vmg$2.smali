.class final Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lvn/com/vnptepay/openID/Vnptepay;

    move-result-object v0

    invoke-virtual {v0}, Lvn/com/vnptepay/openID/Vnptepay;->destroyView()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->b(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->c(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->b(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x65

    const-string v2, "Login Canceled"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_1
    return-void
.end method
