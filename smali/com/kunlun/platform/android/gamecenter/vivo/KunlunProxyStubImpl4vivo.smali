.class public Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appId:Ljava/lang/String;

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private isDebug:Z

.field private kf:Lcom/vivo/account/base/accounts/VivoAccountManager;

.field private kg:Ljava/lang/String;

.field private kh:Lcom/vivo/account/base/accounts/OnVivoAccountChangedListener;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;-><init>(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kh:Lcom/vivo/account/base/accounts/OnVivoAccountChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "transNo"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "accessKey"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productDes"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "price"

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "appId"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logOnOff"

    iget-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->isDebug:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "roleId"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "blance"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "blance"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v2, v2, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "blance"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "vip"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "vip"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v2, v2, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "vip"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "roleLevel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v2, v2, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "roleLevel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "party"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "party"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v2, v2, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "party"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "roleId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "roleId"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v2, v2, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "roleId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "roleName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "roleName"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v2, v2, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "roleName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "serverName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "serverName"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v2, v2, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "serverName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/bbk/payment/PaymentActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "payment_params"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->orderId:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/account/base/activity/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/widget/KunlunDialog;

    invoke-direct {v0, p1}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u60a8\u786e\u5b9a\u8981\u9000\u51fa\u6e38\u620f\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$3;

    invoke-direct {v2, p1, p2}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$3;-><init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.vivo.appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.vivo.storeId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kg:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.debugMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->isDebug:Z

    invoke-static {p1}, Lcom/vivo/account/base/accounts/VivoAccountManager;->getInstance(Landroid/content/Context;)Lcom/vivo/account/base/accounts/VivoAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kf:Lcom/vivo/account/base/accounts/VivoAccountManager;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kf:Lcom/vivo/account/base/accounts/VivoAccountManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kh:Lcom/vivo/account/base/accounts/OnVivoAccountChangedListener;

    invoke-virtual {v0, v1}, Lcom/vivo/account/base/accounts/VivoAccountManager;->registeListener(Lcom/vivo/account/base/accounts/OnVivoAccountChangedListener;)V

    invoke-static {p1}, Lcom/vivo/account/base/accounts/VivoAccountManager;->vivoAccountStartAssistView(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, "finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4vivo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult: requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    if-eqz p4, :cond_1

    const-string v0, "pay_info"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "result_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pay_msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "9000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->orderId:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v2, "vivo onPaymentCompleted"

    invoke-interface {v1, v3, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v2, "6001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, -0x1

    const-string v3, "vivo onPayment cancel"

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, -0x2

    const-string v3, "vivo onPayment error"

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kf:Lcom/vivo/account/base/accounts/VivoAccountManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kh:Lcom/vivo/account/base/accounts/OnVivoAccountChangedListener;

    invoke-virtual {v0, v1}, Lcom/vivo/account/base/accounts/VivoAccountManager;->unRegistListener(Lcom/vivo/account/base/accounts/OnVivoAccountChangedListener;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4vivo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchase:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p5, p6}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "storeId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orderAmount\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "orderTitle\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "version\":\"3.0.0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "vivo"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$2;-><init>(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;I)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4vivo"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/account/base/activity/LoginActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "switchAccount"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    const-string v4, "blance"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v4, v4, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v6, "blance"

    const-string v7, "blance"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "vip"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v4, v4, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v6, "vip"

    const-string v7, "vip"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "roleLevel"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "roleLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v4, v4, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v6, "roleLevel"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v4, "party"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v4, v4, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v6, "party"

    const-string v7, "party"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v4, "roleId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v4, v4, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v6, "roleId"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v4, "roleName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "roleName"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v4, v4, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v6, "roleName"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v4, "serverName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v2, "serverName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v4, v4, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v6, "serverName"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v4, "serviceAreaName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "serviceAreaName"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v4, v4, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v6, "serviceAreaName"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vivo/account/base/accounts/VivoAccountManager;->vivoAccountreportRoleInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    return-void
.end method
