.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;
.super Ljava/lang/Object;
.source "KunlunFbFriendCircleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

.field private final synthetic val$actionButton:Landroid/widget/Button;

.field private final synthetic val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;

    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->val$actionButton:Landroid/widget/Button;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->getKunlun_fb_id()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->SEND:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;)V

    .line 157
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$2(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->setObjectId(Ljava/lang/String;)Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->build()Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;

    move-result-object v6

    .line 159
    .local v6, "requestBean":Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->val$item:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->getKunlun_fb_id()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->SEND:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;->val$actionButton:Landroid/widget/Button;

    invoke-static {v0, v1, v6, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$3(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V

    .line 160
    return-void
.end method
