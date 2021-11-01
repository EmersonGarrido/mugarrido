.class public Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;
.super Landroid/app/Activity;
.source "KunlunFbShareActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->TAG:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->uploadShareLog(Ljava/lang/String;)V

    return-void
.end method

.method private doShare()V
    .locals 10

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 48
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "feedName"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "feedName"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "feedName":Ljava/lang/String;
    :goto_0
    const-string v8, "feedCaption"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "feedCaption"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "feedCaption":Ljava/lang/String;
    :goto_1
    const-string v8, "feedDescription"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "feedDescription"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "feedDescription":Ljava/lang/String;
    :goto_2
    const-string v8, "feedLink"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "feedLink"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "feedLink":Ljava/lang/String;
    :goto_3
    const-string v8, "feedPicture"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "feedPicture"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "feedPicture":Ljava/lang/String;
    :goto_4
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 55
    :cond_0
    iget-object v8, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->TAG:Ljava/lang/String;

    const-string v9, "FB\u5206\u4eab\u5931\u8d25\uff0c\u5206\u4eab\u53c2\u6570\u4e0d\u5b8c\u6574"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v8, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FB_SHARE_ERROR_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v8}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 94
    :goto_5
    return-void

    .line 48
    .end local v0    # "feedCaption":Ljava/lang/String;
    .end local v1    # "feedDescription":Ljava/lang/String;
    .end local v2    # "feedLink":Ljava/lang/String;
    .end local v3    # "feedName":Ljava/lang/String;
    .end local v4    # "feedPicture":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_0

    .line 49
    .restart local v3    # "feedName":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 50
    .restart local v0    # "feedCaption":Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_2

    .line 51
    .restart local v1    # "feedDescription":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_3

    .line 52
    .restart local v2    # "feedLink":Ljava/lang/String;
    :cond_5
    const-string v4, ""

    goto :goto_4

    .line 60
    .restart local v4    # "feedPicture":Ljava/lang/String;
    :cond_6
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v7, "shareInfo":Landroid/os/Bundle;
    const-string v8, "share_description"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v8, "share_title"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v8, "share_image"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v8, "share_link"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v6, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$1;

    invoke-direct {v6, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;)V

    .line 93
    .local v6, "listener":Lcom/kunlun/platform/android/Kunlun$DialogListener;
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v8

    invoke-virtual {v8, v7, p0, v6}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->share(Landroid/os/Bundle;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    goto :goto_5
.end method

.method private uploadShareLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "postId"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;

    invoke-direct {v0, p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "feedLogNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$2;

    invoke-direct {v2, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$2;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 109
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 120
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 121
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->finish()V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 39
    .local v0, "session":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->isShare:Z

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->finish()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->doShare()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 133
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    return-void
.end method
