.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;
.super Ljava/lang/Object;
.source "KunlunFbFriendCircleActivity.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->onRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$10(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->taskFinished()V

    .line 332
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$11(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V

    .line 333
    return-void
.end method

.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;)V
    .locals 2
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getMore_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$9(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->appendToList(Ljava/util/List;)V

    .line 318
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;)V

    return-void
.end method
