.class public Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;,
        Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$a;
    }
.end annotation


# static fields
.field private static mA:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

.field private static mB:Ljava/lang/String;

.field private static mC:Ljava/lang/String;

.field private static mD:Ljava/lang/String;

.field private static mE:Landroid/telephony/TelephonyManager;

.field private static mF:Ljava/lang/String;

.field private static mG:Ljava/lang/String;

.field private static mH:Ljava/lang/String;

.field private static my:Lcom/twm/android/ssoutil/TWMAuth;

.field private static mz:Lcom/twm/android/ssoutil/LoginData;

.field private static uid:Ljava/lang/String;


# instance fields
.field private context:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mz:Lcom/twm/android/ssoutil/LoginData;

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mA:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mB:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mC:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->uid:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mD:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mF:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mG:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mA:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;Z)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mz:Lcom/twm/android/ssoutil/LoginData;

    invoke-virtual {v0}, Lcom/twm/android/ssoutil/LoginData;->getUid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->uid:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "twUid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goodsId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->context:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u8acb\u7a0d\u7b49..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "taiwanmobile"

    new-instance v1, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;-><init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "kunlunTaiWanMobileActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->finish()V

    const-string v0, "TaiWanMobileActivity setLoginStatus"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/twm/android/ssoutil/LoginData;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mz:Lcom/twm/android/ssoutil/LoginData;

    return-void
.end method

.method static synthetic br()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic cc()V
    .locals 0

    return-void
.end method

.method static synthetic cd()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ce()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic cf()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic cg()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ch()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ci()Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mA:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    return-object v0
.end method

.method static synthetic cj()Lcom/twm/android/ssoutil/LoginData;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mz:Lcom/twm/android/ssoutil/LoginData;

    return-object v0
.end method

.method static synthetic s(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mD:Ljava/lang/String;

    return-void
.end method

.method static synthetic t(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mB:Ljava/lang/String;

    return-void
.end method

.method static synthetic u(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mC:Ljava/lang/String;

    return-void
.end method

.method static synthetic v(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callBilling()V
    .locals 3

    new-instance v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;-><init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)V

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mA:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    sget-object v1, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mz:Lcom/twm/android/ssoutil/LoginData;

    sget-object v2, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mC:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->getBillingInfo(Landroid/content/Context;Lcom/twm/android/ssoutil/LoginData;Ljava/lang/String;)V

    return-void
.end method

.method public callCheck()V
    .locals 2

    new-instance v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;-><init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)V

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mA:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    sget-object v1, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mC:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->getCheckInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->context:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goodsId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mG:Ljava/lang/String;

    new-instance v0, Lcom/twm/android/ssoutil/TWMAuth;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Lcom/twm/android/ssoutil/TWMAuth;-><init>(I)V

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->my:Lcom/twm/android/ssoutil/TWMAuth;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mE:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mE:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46697"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mE:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46699"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mE:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46693"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "0"

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mF:Ljava/lang/String;

    :goto_0
    sget-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->my:Lcom/twm/android/ssoutil/TWMAuth;

    new-instance v1, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$a;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$a;-><init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)V

    sget-object v2, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mF:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/twm/android/ssoutil/TWMAuth;->getLoginData(Landroid/app/Activity;Lcom/twm/android/ssoutil/TWMAuthListener;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "1"

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mF:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "1"

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mF:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v0, "3"

    sput-object v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->mF:Ljava/lang/String;

    goto :goto_0
.end method
