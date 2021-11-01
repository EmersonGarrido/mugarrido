.class public Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;
.super Landroid/app/Activity;
.source "KunlunFbOpterationActivity.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 29
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "opterationUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->TAG:Ljava/lang/String;

    const-string v5, " ------- \u754c\u9762\u8df3\u8f6c\u5931\u8d25\uff0c\u94fe\u63a5\u5730\u5740\u4e3a\u7a7a ------- "

    invoke-static {v4, v5}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->finish()V

    .line 65
    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;

    invoke-direct {v4}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;-><init>()V

    invoke-virtual {v4}, Lcom/kunlun/sns/channel/facebookCenter/engine_helper/DomainBeanRequestPublicParameterForFacebookCenter;->getPublicParameter()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 44
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "&"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v5, v2}, Lcom/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Lcom/loopj/android/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "screen"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 50
    .local v3, "screen":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 51
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->setRequestedOrientation(I)V

    .line 56
    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " ------- \u754c\u9762\u8df3\u8f6c\u6210\u529f -------\n\u94fe\u63a5\u5730\u5740\uff1a\n"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\u6a2a\u7ad6\u5c4f\u72b6\u6001\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v4, Lcom/kunlun/sns/channel/facebookCenter/widget/MyKunlunDialog;

    invoke-direct {v4, p0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/MyKunlunDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity$1;

    invoke-direct {v5, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;)V

    invoke-virtual {v4, v5}, Lcom/kunlun/sns/channel/facebookCenter/widget/MyKunlunDialog;->showWeb(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    goto :goto_0

    .line 41
    .end local v3    # "screen":I
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "\u516c\u5171\u53c2\u6570\u7ec4\u88c5\u5931\u8d25\uff0c\u539f\u56e0\uff1a\n"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v4, "\u672a\u77e5\u539f\u56e0"

    :goto_4
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "?"

    goto :goto_2

    .line 52
    .restart local v3    # "screen":I
    :cond_4
    if-ne v3, v7, :cond_1

    .line 53
    invoke-virtual {p0, v7}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->setRequestedOrientation(I)V

    goto :goto_3
.end method
