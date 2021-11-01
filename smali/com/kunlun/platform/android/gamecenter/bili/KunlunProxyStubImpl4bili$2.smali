.class final Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$2;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountInvalid()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$2;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->a(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$2;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->a(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
