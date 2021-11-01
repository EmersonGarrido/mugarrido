.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;
.super Ljava/lang/Object;
.source "KunlunFbMessageCenterActivity.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListenerWithUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getGamesItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
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
        "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    iput p2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->val$position:I

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 371
    return-void
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    return-void
.end method

.method public onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
    .locals 3
    .param p1, "error"    # Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->RECEVICE_FAILD:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 366
    return-void
.end method

.method public onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;)V
    .locals 3
    .param p1, "respondDomainBean"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    move-result-object v0

    iget v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->val$position:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->removeData(I)V

    .line 359
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;->getRetmsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;

    invoke-virtual {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;->onSuccess(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRespondBean;)V

    return-void
.end method
