.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;
.super Ljava/lang/Object;
.source "KunlunFbFriendCircleActivity.java"

# interfaces
.implements Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    return-object v0
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 309
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$7(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$8(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v1

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;->idle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$7(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, "getAppFriendsNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    .line 312
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;

    invoke-direct {v3, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;)V

    .line 311
    invoke-virtual {v2, v0, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$12(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;)V

    .line 336
    .end local v0    # "getAppFriendsNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;
    :cond_0
    return-void
.end method
