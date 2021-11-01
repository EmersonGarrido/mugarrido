.class Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/ewan/supersdk/open/SuperLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCancel()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x1

    const-string v2, "\u53d6\u6d88\u767b\u9646"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public onLoginFail(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public onLoginSuccess(Lcn/ewan/supersdk/open/SuperLogin;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcn/ewan/supersdk/open/SuperLogin;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->b(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)V

    return-void
.end method

.method public onNoticeGameToSwitchAccount()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onSwitchAccountSuccess(Lcn/ewan/supersdk/open/SuperLogin;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcn/ewan/supersdk/open/SuperLogin;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
