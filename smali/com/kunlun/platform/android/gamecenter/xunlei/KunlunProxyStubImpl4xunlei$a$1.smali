.class final Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->onLoginFinish(ILcom/xunlei/niux/mobilegame/sdk/vo/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kE:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a$1;->kE:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a$1;->kE:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->b(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->logout(Landroid/content/Context;)I

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a$1;->kE:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->d(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a$1;->kE:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->d(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_1
    return-void
.end method
