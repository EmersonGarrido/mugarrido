.class public Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private fc:Lcom/tongbulv/ITBLCallback;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;-><init>(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->fc:Lcom/tongbulv/ITBLCallback;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Lcom/tongbulv/bean/Transfer;

    invoke-direct {v0}, Lcom/tongbulv/bean/Transfer;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/tongbulv/bean/Transfer;->frm:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/tongbulv/bean/Transfer;->fdata:Ljava/lang/String;

    iput-object p2, v0, Lcom/tongbulv/bean/Transfer;->goodsName:Ljava/lang/String;

    iput-object p2, v0, Lcom/tongbulv/bean/Transfer;->goodsDetail:Ljava/lang/String;

    iput-object p4, v0, Lcom/tongbulv/bean/Transfer;->cp_param:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tongbulv/bean/Transfer;->goodsId:I

    iput p5, v0, Lcom/tongbulv/bean/Transfer;->gold:I

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/tongbulv/bean/Transfer;->sid:I

    iput p6, v0, Lcom/tongbulv/bean/Transfer;->pay_amount:I

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tongbulv/bean/Transfer;->gameName:Ljava/lang/String;

    iput-object p2, v0, Lcom/tongbulv/bean/Transfer;->goodsItem:Ljava/lang/String;

    iput-object p4, v0, Lcom/tongbulv/bean/Transfer;->ordernum:Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->fc:Lcom/tongbulv/ITBLCallback;

    invoke-static {p1, v1, v2, v0}, Lcom/tongbulv/TBLUserCenter;->initClient(Landroid/content/Context;ILcom/tongbulv/ITBLCallback;Lcom/tongbulv/bean/Transfer;)Lcom/tongbulv/TBLUserCenter;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TBL_SUPPLY_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "buka"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$2;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$2;-><init>(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/tongbulv/bean/Transfer;

    invoke-direct {v0}, Lcom/tongbulv/bean/Transfer;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/tongbulv/bean/Transfer;->frm:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Lcom/tongbulv/bean/Transfer;->fdata:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->fc:Lcom/tongbulv/ITBLCallback;

    invoke-static {p1, v1, v2, v0}, Lcom/tongbulv/TBLUserCenter;->initClient(Landroid/content/Context;ILcom/tongbulv/ITBLCallback;Lcom/tongbulv/bean/Transfer;)Lcom/tongbulv/TBLUserCenter;

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    const-string v1, "success"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4buka"

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

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4buka"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 12

    const-string v2, "KunlunProxyStubImpl4buka"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "purchase:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    const-string v2, ""

    const-string v3, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v2, v3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v7, v2, v3

    const/4 v3, 0x1

    aget-object v8, v2, v3

    invoke-static {v8}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->isInteger(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KunlunProxyStubImpl4buka"

    const-string v3, "\u5145\u503c\u53c2\u6570\u4e3a\uff1a\u5546\u54c1\u7684\u6761\u76ee\u540d\u79f0_\u5546\u54c1id,\u5e76\u4e14\u5546\u54c1id\u4e3a\u7eaf\u6570\u5b57\uff01"

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v11, "buka"

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p6

    move v6, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$3;-><init>(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v11, v2}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    goto :goto_0
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "relog"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
