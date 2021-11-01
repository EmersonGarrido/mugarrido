.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;
.super Ljava/lang/Object;
.source "KunlunFbFriendRequestAcitvity.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getData()V
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
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$17(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 395
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$17(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 390
    return-void
.end method

.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->HTTP_ERROR:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;)V
    .locals 4
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;

    .prologue
    .line 369
    move-object v0, p1

    .line 371
    .local v0, "getAllFriendsNetRespondBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->getObjectid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$8(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->getRequest_dialog_title()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$9(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->getRequest_dialog_message()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$10(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->getRequest_friend_hint()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$11(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$12(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$13(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->getLogo_url()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$14(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 378
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$15(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->getAwards()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->addAwardImages(Ljava/util/List;)V

    .line 379
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;)V

    return-void
.end method
