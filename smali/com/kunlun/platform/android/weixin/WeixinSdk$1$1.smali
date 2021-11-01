.class final Lcom/kunlun/platform/android/weixin/WeixinSdk$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->onRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mX:Lcom/kunlun/platform/android/weixin/WeixinSdk$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/weixin/WeixinSdk$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1$1;->mX:Lcom/kunlun/platform/android/weixin/WeixinSdk$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1$1;->mX:Lcom/kunlun/platform/android/weixin/WeixinSdk$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk$1;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->f(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1$1;->mX:Lcom/kunlun/platform/android/weixin/WeixinSdk$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk$1;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->f(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1$1;->mX:Lcom/kunlun/platform/android/weixin/WeixinSdk$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk$1;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/weixin/WeixinSdk;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$1$1;->mX:Lcom/kunlun/platform/android/weixin/WeixinSdk$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk$1;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk$1;)Lcom/kunlun/platform/android/weixin/WeixinSdk;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->b(Lcom/kunlun/platform/android/weixin/WeixinSdk;)I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
