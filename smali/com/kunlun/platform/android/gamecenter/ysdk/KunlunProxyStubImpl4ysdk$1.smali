.class final Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;
.super Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;Landroid/content/Context;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 6

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/ysdk/YsdkPayDialog;-><init>(Landroid/content/Context;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method


# virtual methods
.method protected final getParam(I)Landroid/os/Bundle;
    .locals 7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v1, "zoneId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v1, "zoneId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->b(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)[B

    move-result-object v3

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "Kunlun.qq.isCanChange"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->c(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v6, "zoneId"

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "resData"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v3, "isCanChange"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "saveValue"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "openKey"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openid\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v5}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->e(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "openkey\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "pay_token\":\""

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->c(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "appid\":\""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v4}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->f(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "zoneid\":\""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pf\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->g(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pfkey\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->h(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "amt\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "payEvn\":\""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->a(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "Kunlun.qq.payTest"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "test"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ext"

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uid\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uname\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pid\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "rid\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pay_partners_order_id\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "customData"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const-string v0, "1"

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk$1;->kR:Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;->d(Lcom/kunlun/platform/android/gamecenter/ysdk/KunlunProxyStubImpl4ysdk;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const-string v1, ""

    goto/16 :goto_2

    :cond_3
    const-string v0, "release"

    goto/16 :goto_3
.end method
