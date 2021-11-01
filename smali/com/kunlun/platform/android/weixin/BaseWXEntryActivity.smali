.class public Lcom/kunlun/platform/android/weixin/BaseWXEntryActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "com.kunlun.platform.android.weixin.BaseWXEntryActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/weixin/BaseWXEntryActivity;->finish()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "com.kunlun.platform.android.weixin.BaseWXEntryActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/kunlun/platform/android/weixin/BaseWXEntryActivity;->setIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/weixin/BaseWXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/weixin/BaseWXEntryActivity;->finish()V

    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 3

    const-string v0, "com.kunlun.platform.android.weixin.BaseWXEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReq, BaseReq = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 3

    const-string v0, "com.kunlun.platform.android.weixin.BaseWXEntryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResp, errCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p1, Lcom/tencent/mm/sdk/modelbase/BaseResp;->errCode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/weixin/WeixinSdk;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
