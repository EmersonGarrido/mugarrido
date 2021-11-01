.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;
.super Ljava/lang/Object;
.source "KunlunFbMessageCenterActivity.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->onRefresh()V
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
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$9(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->taskFinished()V

    .line 283
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$10(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V

    .line 284
    return-void
.end method

.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v0

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->HTTP_ERROR:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;)V
    .locals 3
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;

    .prologue
    .line 266
    move-object v0, p1

    .line 268
    .local v0, "getMsgListNetRespondBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/util/List;)V

    .line 269
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$7(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->appendToList(Ljava/util/List;)V

    .line 270
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->getMore_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$8(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2$1;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;)V

    return-void
.end method
