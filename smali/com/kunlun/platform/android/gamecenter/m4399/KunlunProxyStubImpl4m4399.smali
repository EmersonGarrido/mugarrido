.class public Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private hW:Lcn/m4399/operate/OperateCenter;

.field private hX:Lcn/m4399/operate/OperateCenterConfig;

.field private hY:Landroid/content/SharedPreferences;

.field private hZ:Lcn/m4399/operate/User;

.field private ia:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hW:Lcn/m4399/operate/OperateCenter;

    new-instance v5, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$6;

    invoke-direct {v5, p0, p4, p5}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$6;-><init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcn/m4399/operate/OperateCenter;->recharge(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcn/m4399/operate/OperateCenter$OnRechargeFinishedListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Lcn/m4399/operate/User;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hZ:Lcn/m4399/operate/User;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method private bM()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->ia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hZ:Lcn/m4399/operate/User;

    invoke-virtual {v2}, Lcn/m4399/operate/User;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hZ:Lcn/m4399/operate/User;

    invoke-virtual {v2}, Lcn/m4399/operate/User;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4399"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$2;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$2;-><init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;)V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->bM()V

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hZ:Lcn/m4399/operate/User;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->bM()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hW:Lcn/m4399/operate/OperateCenter;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$3;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$3;-><init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/m4399/operate/OperateCenter;->login(Landroid/content/Context;Lcn/m4399/operate/OperateCenter$OnLoginFinishedListener;)V

    goto :goto_0
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hW:Lcn/m4399/operate/OperateCenter;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$7;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$7;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, p1, v1}, Lcn/m4399/operate/OperateCenter;->shouldQuitGame(Landroid/content/Context;Lcn/m4399/operate/OperateCenter$OnQuitGameListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->mActivity:Landroid/app/Activity;

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/m4399/operate/OperateCenter;->getInstance()Lcn/m4399/operate/OperateCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hW:Lcn/m4399/operate/OperateCenter;

    const-string v0, "sdk_sp"

    invoke-virtual {p1, v0, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hY:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Screen_Orientation"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "gamekey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->ia:Ljava/lang/String;

    new-instance v1, Lcn/m4399/operate/OperateCenterConfig$Builder;

    invoke-direct {v1, p1}, Lcn/m4399/operate/OperateCenterConfig$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.debugMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcn/m4399/operate/OperateCenterConfig$Builder;->setDebugEnabled(Z)Lcn/m4399/operate/OperateCenterConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/m4399/operate/OperateCenterConfig$Builder;->setOrientation(I)Lcn/m4399/operate/OperateCenterConfig$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hY:Landroid/content/SharedPreferences;

    const-string v2, "pop_style"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;->POPLOGOSTYLE_ONE:Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;

    :goto_0
    invoke-virtual {v1, v0}, Lcn/m4399/operate/OperateCenterConfig$Builder;->setPopLogoStyle(Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;)Lcn/m4399/operate/OperateCenterConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/m4399/operate/OperateCenterConfig$Builder;->setSupportExcess(Z)Lcn/m4399/operate/OperateCenterConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/m4399/operate/OperateCenterConfig$Builder;->setGameKey(Ljava/lang/String;)Lcn/m4399/operate/OperateCenterConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/m4399/operate/OperateCenterConfig$Builder;->build()Lcn/m4399/operate/OperateCenterConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hX:Lcn/m4399/operate/OperateCenterConfig;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hW:Lcn/m4399/operate/OperateCenter;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hX:Lcn/m4399/operate/OperateCenterConfig;

    invoke-virtual {v0, v1}, Lcn/m4399/operate/OperateCenter;->setConfig(Lcn/m4399/operate/OperateCenterConfig;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hW:Lcn/m4399/operate/OperateCenter;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$1;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$1;-><init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, p1, v1}, Lcn/m4399/operate/OperateCenter;->init(Landroid/content/Context;Lcn/m4399/operate/OperateCenter$OnInitGloabListener;)V

    return-void

    :pswitch_0
    sget-object v0, Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;->POPLOGOSTYLE_ONE:Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;->POPLOGOSTYLE_TWO:Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;->POPLOGOSTYLE_THREE:Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;->POPLOGOSTYLE_FOUR:Lcn/m4399/operate/OperateCenterConfig$PopLogoStyle;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4m4399"

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

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hW:Lcn/m4399/operate/OperateCenter;

    invoke-virtual {v0}, Lcn/m4399/operate/OperateCenter;->destroy()V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4m4399"

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

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "4399"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$5;-><init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;I)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4m4399"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;->hW:Lcn/m4399/operate/OperateCenter;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399$4;-><init>(Lcom/kunlun/platform/android/gamecenter/m4399/KunlunProxyStubImpl4m4399;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/m4399/operate/OperateCenter;->switchAccount(Landroid/content/Context;Lcn/m4399/operate/OperateCenter$OnLoginFinishedListener;)V

    return-void
.end method

.method public setKunlunServerId(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4m4399"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setKunlunServerId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/m4399/operate/OperateCenter;->getInstance()Lcn/m4399/operate/OperateCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/m4399/operate/OperateCenter;->setServer(Ljava/lang/String;)V

    return-void
.end method
