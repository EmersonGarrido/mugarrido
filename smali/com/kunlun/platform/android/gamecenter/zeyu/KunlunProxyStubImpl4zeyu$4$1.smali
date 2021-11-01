.class final Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zeyu/sdk/ZeyuSDKAccountSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lc:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4$1;->lc:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountSwitched(Lcom/zeyu/sdk/object/ZeyuUserInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4$1;->lc:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;)Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->d(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4$1;->lc:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;)Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->d(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    invoke-interface {v0, p1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4$1;->lc:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;->a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;)Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Lcom/zeyu/sdk/object/ZeyuUserInfo;)V

    return-void
.end method
