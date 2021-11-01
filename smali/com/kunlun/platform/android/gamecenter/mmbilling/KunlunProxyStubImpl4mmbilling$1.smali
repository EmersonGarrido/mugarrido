.class final Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$1;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$1;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->a(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$1;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->a(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u521d\u59cb\u5316\u8d85\u65f6"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$1;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->b(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)V

    :cond_0
    return-void
.end method
