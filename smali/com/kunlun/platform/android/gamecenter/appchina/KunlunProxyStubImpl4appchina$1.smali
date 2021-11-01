.class final Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yyh/sdk/AccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$1;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLogout()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$1;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->a(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$1;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->a(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onSwitchAccount(Lcom/appchina/usersdk/Account;Lcom/appchina/usersdk/Account;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$1;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->a(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$1;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->a(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
