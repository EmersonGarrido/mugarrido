.class final Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hw:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2$1;->hw:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2$1;->hw:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;)Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kugou/game/sdk/api/online/KGPlatform;->showWelcomeDialog(Landroid/app/Activity;)V

    return-void
.end method
