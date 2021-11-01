.class final Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kaopu/supersdk/callback/KPLogoutCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->onAuthSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLogout()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->b(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method

.method public final onSwitch()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1$1;->hd:Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;->a(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu$1;)Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->b(Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/kaopu/KunlunProxyStubImpl4kaopu;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
