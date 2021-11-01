.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;
.super Ljava/lang/Object;
.source "KunlunFbMessageCenterActivity.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->initGetData()V
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
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 326
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 320
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$10(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V

    .line 321
    return-void
.end method

.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 314
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;)V
    .locals 3
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/util/List;)V

    .line 303
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$7(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->appendToList(Ljava/util/List;)V

    .line 304
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->getMore_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$8(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->getMessage_center_hint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$12(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$13(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$14(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->getLogo_url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$15(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 309
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;)V

    return-void
.end method
