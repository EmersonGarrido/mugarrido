.class final Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/m4399/operate/OperateCenter$OnLoginFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginFinished(ZILcn/m4399/operate/User;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "onForceReLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;->ib:Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "close login"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0
.end method
