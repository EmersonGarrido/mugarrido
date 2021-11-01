.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;
.super Ljava/lang/Object;
.source "KunlunFbMessageCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

.field private final synthetic val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

    iput p3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->val$position:I

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    move-result-object v0

    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->getFacebookId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_receiverid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_actionid()I

    move-result v3

    .line 182
    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

    invoke-virtual {v4}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_objectid()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

    invoke-virtual {v5}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_requestid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

    invoke-virtual {v6}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_type()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;->val$position:I

    .line 181
    invoke-static/range {v0 .. v7}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$2(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    return-void
.end method
