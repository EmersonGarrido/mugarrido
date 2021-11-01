.class final Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->onAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kj:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;->kj:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;->kj:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;

    return-object v0
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;->kj:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;->kj:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->c(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;->kj:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->c(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_1
    return-void
.end method
