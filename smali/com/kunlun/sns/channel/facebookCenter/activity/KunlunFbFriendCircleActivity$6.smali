.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;
.super Ljava/lang/Object;
.source "KunlunFbFriendCircleActivity.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->initData()V
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
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$19(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 369
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$19(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 374
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$11(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V

    .line 375
    return-void
.end method

.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 362
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 364
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;)V
    .locals 3
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getObjectid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$13(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getRequest_dialog_title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$14(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getRequest_dialog_message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$15(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getMore_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$9(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getAwards()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->addAwardImages(Ljava/util/List;)V

    .line 353
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getLogo_url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$17(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 354
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$18(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getFriend_circle_title_hint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->appendToList(Ljava/util/List;)V

    .line 357
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;)V

    return-void
.end method
