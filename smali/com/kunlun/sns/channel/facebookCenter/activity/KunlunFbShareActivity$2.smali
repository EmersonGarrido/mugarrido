.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$2;
.super Ljava/lang/Object;
.source "KunlunFbShareActivity.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->uploadShareLog(Ljava/lang/String;)V
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
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRespondBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRespondBean;)V
    .locals 3
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRespondBean;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->fB_SHARE_SUCCESS_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$2;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRespondBean;)V

    return-void
.end method
