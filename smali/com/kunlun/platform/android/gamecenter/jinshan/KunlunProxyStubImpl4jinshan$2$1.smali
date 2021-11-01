.class final Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hb:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2$1;->hb:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;

    iput p2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2$1;->val$price:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->getInstance()Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2$1;->hb:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->c(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2$1;->val$price:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2$1;->hb:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->f(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)V

    return-void
.end method
