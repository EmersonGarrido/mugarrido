.class public Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private fF:I

.field private hD:Ljava/lang/String;

.field private hE:Lcom/letv/letvsdk/LetvSDK;

.field private hF:Ljava/lang/String;

.field private hG:Lcom/letv/letvsdk/LetvSDK$LoginCallback;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private productName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->accessToken:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->fF:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hF:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;-><init>(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hG:Lcom/letv/letvsdk/LetvSDK$LoginCallback;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;Landroid/app/Activity;Ljava/lang/String;FLjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    new-instance v0, Lcom/letv/lepaysdk/smart/LePayInfo;

    invoke-direct {v0}, Lcom/letv/lepaysdk/smart/LePayInfo;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setLetv_user_access_token(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setLetv_user_id(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "letv/payinterface.php"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setNotify_url(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/letv/lepaysdk/smart/LePayInfo;->setCooperator_order_no(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setPrice(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setProduct_name(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/letv/lepaysdk/smart/LePayInfo;->setProduct_desc(Ljava/lang/String;)V

    const-string v1, "21600"

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setPay_expire(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setProduct_id(Ljava/lang/String;)V

    const-string v1, "RMB"

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setCurrency(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/letv/lepaysdk/smart/LePayInfo;->setProduct_urls(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hE:Lcom/letv/letvsdk/LetvSDK;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;

    invoke-direct {v2, p0, p2, p5}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;-><init>(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/letv/letvsdk/LetvSDK;->pay(Landroid/app/Activity;Lcom/letv/lepaysdk/smart/LePayInfo;Lcom/letv/letvsdk/LetvSDK$PayCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hD:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->accessToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->fF:I

    return v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method private r(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "products.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v0, 0x400

    new-array v3, v0, [B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    if-gtz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hE:Lcom/letv/letvsdk/LetvSDK;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hG:Lcom/letv/letvsdk/LetvSDK$LoginCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/letv/letvsdk/LetvSDK;->login(Landroid/app/Activity;Lcom/letv/letvsdk/LetvSDK$LoginCallback;Z)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hE:Lcom/letv/letvsdk/LetvSDK;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$5;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$5;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/letv/letvsdk/LetvSDK;->exit(Landroid/app/Activity;Lcom/letv/letvsdk/LetvSDK$ExitCallback;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mActivity:Landroid/app/Activity;

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/product_image.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hF:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hF:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->r(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.leshi.productName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->productName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lepay_appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->fF:I

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lepay_appkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$2;

    invoke-direct {v0, p2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$2;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-static {p1, v0}, Lcom/letv/letvsdk/LetvSDK;->init(Landroid/app/Activity;Lcom/letv/letvsdk/LetvSDK$InitCallback;)Lcom/letv/letvsdk/LetvSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hE:Lcom/letv/letvsdk/LetvSDK;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4letv"

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

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hE:Lcom/letv/letvsdk/LetvSDK;

    invoke-virtual {v0, p1}, Lcom/letv/letvsdk/LetvSDK;->pause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hE:Lcom/letv/letvsdk/LetvSDK;

    invoke-virtual {v0, p1}, Lcom/letv/letvsdk/LetvSDK;->resume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4letv"

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

    const-string v6, "letv"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$3;-><init>(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4letv"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hE:Lcom/letv/letvsdk/LetvSDK;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->hG:Lcom/letv/letvsdk/LetvSDK$LoginCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/letv/letvsdk/LetvSDK;->login(Landroid/app/Activity;Lcom/letv/letvsdk/LetvSDK$LoginCallback;Z)V

    return-void
.end method
