.class final Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;->onLogoutSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fW:Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2$1;->fW:Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2$1;->fW:Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;->a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;)Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2$1;->fW:Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;->a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;)Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->b(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2$1;->fW:Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;->a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;)Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->e(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
