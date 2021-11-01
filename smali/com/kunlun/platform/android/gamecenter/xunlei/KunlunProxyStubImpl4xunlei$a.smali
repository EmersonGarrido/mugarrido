.class final Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;
.super Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private synthetic kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;


# direct methods
.method private constructor <init>(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-direct {p0}, Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;-><init>(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;)Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    return-object v0
.end method


# virtual methods
.method public final onAcitvityFinish()V
    .locals 2

    invoke-super {p0}, Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;->onAcitvityFinish()V

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "\u9000\u51faSDK\u754c\u9762"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onChargeFinish(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;->onChargeFinish(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "\u5145\u503c\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->c(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->c(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->e(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->f(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->f(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "\u5145\u503c\u7ed3\u675f"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onChargeStart(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;->onChargeFinish(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "\u5145\u503c\u5f00\u59cb"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onLoginFinish(ILcom/xunlei/niux/mobilegame/sdk/vo/User;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;->onLoginFinish(ILcom/xunlei/niux/mobilegame/sdk/vo/User;)V

    if-nez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->c(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.xunlei.gameID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xunlei/niux/mobilegame/sdk/vo/User;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xunlei/niux/mobilegame/sdk/vo/User;->getCustomerKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xunlei"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->b(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->b(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a$1;-><init>(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->d(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->d(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    invoke-static {p1}, Lcom/xunlei/niux/mobilegame/sdk/constants/LoginResult;->getResultMessage(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public final onLogout()V
    .locals 2

    invoke-super {p0}, Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;->onLogout()V

    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->c(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->c(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onSDKInitialized(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;->onSDKInitialized(I)V

    const-string v0, "KunlunProxyStubImpl4xunlei"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->hideWaiting()V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->b(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;->kC:Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->b(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x194 -> :sswitch_1
        0x1f4 -> :sswitch_1
    .end sparse-switch
.end method
