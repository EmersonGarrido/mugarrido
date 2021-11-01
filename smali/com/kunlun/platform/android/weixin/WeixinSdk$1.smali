.class final Lcom/kunlun/platform/android/weixin/WeixinSdk$1;
.super Lcom/kunlun/platform/android/common/KunlunActivityControl;
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
.method constructor <init>(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-direct {p0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/weixin/WeixinSdk$1;)Lcom/kunlun/platform/android/weixin/WeixinSdk;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    return-object v0
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v1

    iput-object v1, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->api:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->b(Lcom/kunlun/platform/android/weixin/WeixinSdk;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->c(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->b(Lcom/kunlun/platform/android/weixin/WeixinSdk;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->d(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->b(Lcom/kunlun/platform/android/weixin/WeixinSdk;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->e(Lcom/kunlun/platform/android/weixin/WeixinSdk;)V

    :cond_2
    return-void
.end method

.method public final onRestart()V
    .locals 4

    const-string v0, "kunlun.WeixinSdk"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    iget-object v0, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/weixin/WeixinSdk$1$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/weixin/WeixinSdk$1$1;-><init>(Lcom/kunlun/platform/android/weixin/WeixinSdk$1;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
