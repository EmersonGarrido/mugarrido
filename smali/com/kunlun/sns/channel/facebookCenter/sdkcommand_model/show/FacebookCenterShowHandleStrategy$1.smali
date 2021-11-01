.class Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1;
.super Ljava/lang/Object;
.source "FacebookCenterShowHandleStrategy.java"

# interfaces
.implements Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFriendCircleLayoutClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-static {p1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->access$0(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeMenuToOldLocation()V

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 118
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 120
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onFriendRequestLayoutClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-static {p1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->access$0(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeMenuToOldLocation()V

    .line 103
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, "newIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onHideButtonLayoutClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeFloatMenu()V

    .line 144
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->access$2()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 145
    return-void
.end method

.method public onMessageCenterLayoutClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-static {p1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->access$0(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeMenuToOldLocation()V

    .line 89
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->setDefaultMessageCenterIcon(Landroid/content/Context;)V

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "messageIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 97
    .end local v0    # "messageIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOperationLayoutClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeMenuToOldLocation()V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    .line 127
    .local v0, "floatMenuItem":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8df3\u8f6curl\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    const-string v2, "screen"

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->getScreen()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v2, "url"

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    sget-object v2, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 139
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8df3\u8f6c\u5931\u8d25,url\u4e3a\u7a7a\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onShareLayoutClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-static {p1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->access$0(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeMenuToOldLocation()V

    .line 60
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRequestBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRequestBean;-><init>()V

    .line 61
    .local v0, "getFeedInfoNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1$1;

    invoke-direct {v2, p0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 83
    .end local v0    # "getFeedInfoNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRequestBean;
    :cond_0
    return-void
.end method
