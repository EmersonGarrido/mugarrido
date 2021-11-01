.class final Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zeyu/sdk/ZeyuSDKLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$2;->lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginCanceled()V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "onLoginCanceled"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x66

    const-string v2, "\u767b\u5f55\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onLoginFail(ILjava/lang/String;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "onLoginFail"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onLoginSuccess(Lcom/zeyu/sdk/object/ZeyuUserInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$2;->lb:Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Lcom/zeyu/sdk/object/ZeyuUserInfo;)V

    return-void
.end method
