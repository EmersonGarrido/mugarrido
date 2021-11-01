.class final Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kk:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1$1;->kk:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Lcom/bbk/payment/PaymentActionDetailsInit;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1$1;->kk:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1$1;->kk:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->b(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bbk/payment/PaymentActionDetailsInit;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
