.class final Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wandoujia/mariosdk/plugin/api/model/callback/WandouAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$1;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginFailed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onLoginSuccess()V
    .locals 0

    return-void
.end method

.method public final onLogoutSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$1;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->a(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$1;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->a(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
