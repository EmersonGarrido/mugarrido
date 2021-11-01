.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;
.super Ljava/lang/Object;
.source "KunlunFbFriendRequestAcitvity.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->showInvitableFriends()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

.field private toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->KUNLUN_FB_HTTPERROR:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->toast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 276
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .local v1, "myJsonObject":Lorg/json/JSONObject;
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedParseNetResponseToDomainBean;

    invoke-direct {v3}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedParseNetResponseToDomainBean;-><init>()V

    invoke-virtual {v3, v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedParseNetResponseToDomainBean;->parseNetResponseDataToNetRespondBean(Ljava/lang/Object;)Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;

    move-result-object v0

    .line 279
    .local v0, "friendsBeInvitedCollection":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$4(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;->getData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->addFriends(Ljava/util/List;)V

    .line 280
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$4(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->notifyDataSetChanged()V

    .line 282
    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;->getPaging()Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;

    move-result-object v2

    .line 283
    .local v2, "paging":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->getNext()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->showHeadAndFootView()V

    .line 285
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->openRefresh()V

    .line 286
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->getCursors()Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;->getAfter()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V

    .line 293
    :goto_0
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->taskFinished()V

    .line 297
    .end local v0    # "friendsBeInvitedCollection":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;
    .end local v1    # "myJsonObject":Lorg/json/JSONObject;
    .end local v2    # "paging":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    :goto_1
    return-void

    .line 288
    .restart local v0    # "friendsBeInvitedCollection":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;
    .restart local v1    # "myJsonObject":Lorg/json/JSONObject;
    .restart local v2    # "paging":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    :cond_0
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->hideHeadAndFootView()V

    .line 289
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->closeRefresh()V

    .line 290
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    const-string v4, "No any more friends!"

    invoke-static {v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v0    # "friendsBeInvitedCollection":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;
    .end local v1    # "myJsonObject":Lorg/json/JSONObject;
    .end local v2    # "paging":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 1
    .param p1, "arg0"    # Ljava/io/FileNotFoundException;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 1
    .param p1, "arg0"    # Ljava/io/IOException;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 1
    .param p1, "arg0"    # Ljava/net/MalformedURLException;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 261
    return-void
.end method
