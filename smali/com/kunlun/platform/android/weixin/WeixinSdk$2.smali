.class final Lcom/kunlun/platform/android/weixin/WeixinSdk$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/weixin/WeixinSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/weixin/WeixinSdk;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    const-string v0, "kunlun.WeixinSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->g(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->finish()Z

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->h(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v4, v1, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "weixin purchase finish"

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->j(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$DialogListener;

    move-result-object v0

    const-string v1, "share cancle"

    invoke-interface {v0, v5, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    iget v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "weixin_sdk_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->k(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    iget-object v0, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0, v3}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk;Lcom/tencent/mm/sdk/modelpay/PayReq;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/sdk/modelpay/PayResp;

    iget v1, v0, Lcom/tencent/mm/sdk/modelpay/PayResp;->errCode:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    const/4 v0, 0x1

    const-string v1, "weixin purchase finish"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    :cond_4
    :goto_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v7, :cond_5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/sdk/modelbase/BaseResp;

    iget v0, v0, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    packed-switch v0, :pswitch_data_1

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->j(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$DialogListener;

    move-result-object v0

    const/4 v1, -0x3

    const-string v2, "share error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->h(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v1

    iget v0, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v1, v0, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_7
    iget v1, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    const/4 v2, -0x4

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->h(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v1

    iget v0, v0, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    const-string v2, "\u62d2\u7edd\u6388\u6743"

    invoke-interface {v1, v0, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lcom/tencent/mm/sdk/modelpay/PayResp;->extData:Ljava/lang/String;

    const-string v1, "kunlun.WeixinSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "orderId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-interface {v1, v6, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_8
    const-string v0, "weixin purchase success"

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7b7e\u540d\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "weixin purchase finish"

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u65e0\u6743\u9650"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u4e0d\u652f\u6301"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->j(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$DialogListener;

    move-result-object v0

    const-string v1, "share success"

    invoke-interface {v0, v6, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->j(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$DialogListener;

    move-result-object v0

    const-string v1, "share cancle"

    invoke-interface {v0, v5, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_9
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$2;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->j(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/Kunlun$DialogListener;

    move-result-object v0

    const-string v1, "share denied"

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
