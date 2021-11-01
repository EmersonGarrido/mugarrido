.class final Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;
.super Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;Landroid/content/Context;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 6

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method


# virtual methods
.method protected final getParam(I)Landroid/os/Bundle;
    .locals 5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Lcom/tencent/unipay/request/UnipayGameRequest;

    invoke-direct {v2}, Lcom/tencent/unipay/request/UnipayGameRequest;-><init>()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->e(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/tencent/msdk/api/MsdkBaseInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->offerId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->f(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->openId:Ljava/lang/String;

    sget v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->g(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    sget v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v0, :cond_1

    const-string v0, "openid"

    :goto_1
    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionId:Ljava/lang/String;

    sget v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v0, :cond_2

    const-string v0, "kp_actoken"

    :goto_2
    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->sessionType:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "zoneId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "zoneId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->i(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->pf:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->j(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->pfKey:Ljava/lang/String;

    const-string v0, "common"

    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->acctType:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->k(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->resData:[B

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.qq.isCanChange"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->isCanChange:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->saveValue:Ljava/lang/String;

    const-string v0, "request"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "openid\":\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v4}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->f(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "openkey\":\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->openKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "pay_token\":\""

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->g(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "appid\":\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v4}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->e(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/tencent/msdk/api/MsdkBaseInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "zoneid\":\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/tencent/unipay/request/UnipayGameRequest;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pf\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->i(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "pfkey\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->j(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "amt\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "payEvn\":\""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "Kunlun.qq.payTest"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "test"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ext"

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uname\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay_partners_order_id\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "customData"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$4;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->h(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, "hy_gameid"

    goto/16 :goto_1

    :cond_2
    const-string v0, "wc_actoken"

    goto/16 :goto_2

    :cond_3
    const-string v0, "1"

    goto/16 :goto_3

    :cond_4
    const-string v0, ""

    goto/16 :goto_4

    :cond_5
    const-string v0, "release"

    goto/16 :goto_5
.end method
