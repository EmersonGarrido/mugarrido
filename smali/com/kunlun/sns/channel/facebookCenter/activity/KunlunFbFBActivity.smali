.class public Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFBActivity;
.super Landroid/app/Activity;
.source "KunlunFbFBActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 49
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 50
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFBActivity;->finish()V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFBActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFBActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFBActivity$1;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFBActivity$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFBActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->stopTracking()V

    .line 57
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 62
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->startTracking()V

    .line 63
    return-void
.end method
