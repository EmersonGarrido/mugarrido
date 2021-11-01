.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;
.super Ljava/lang/Object;
.source "KunlunFbMessageCenterActivity.java"

# interfaces
.implements Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    return-object v0
.end method


# virtual methods
.method public onRefresh()V
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$3(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$4(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v1

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;->idle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$3(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "getMsgListNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    .line 263
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;

    invoke-direct {v3, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)V

    .line 262
    invoke-virtual {v2, v0, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$11(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;)V

    .line 291
    .end local v0    # "getMsgListNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;
    :cond_0
    return-void
.end method
