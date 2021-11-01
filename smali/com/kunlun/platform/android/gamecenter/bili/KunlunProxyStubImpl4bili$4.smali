.class final Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .locals 0

    return-void
.end method

.method public final onFailed(Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->a(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->a(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "reLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
