.class Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1$1;
.super Ljava/lang/Object;
.source "FacebookCenterShowHandleStrategy.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1;->onShareLayoutClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 2
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 79
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;)V
    .locals 3
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 66
    .local v0, "shareIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->isShare:Z

    .line 67
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    const-string v1, "feedName"

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->getKunlun_fb_feed_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, "feedCaption"

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->getKunlun_fb_feed_caption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "feedDescription"

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->getKunlun_fb_feed_description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "feedLink"

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->getKunlun_fb_feed_link()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "feedPicture"

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;->getKunlun_fb_feed_picture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1$1;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_feed_info/GetFeedInfoNetRespondBean;)V

    return-void
.end method
