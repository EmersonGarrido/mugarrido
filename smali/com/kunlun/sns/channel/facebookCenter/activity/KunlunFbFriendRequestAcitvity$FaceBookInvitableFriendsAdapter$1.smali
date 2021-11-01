.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;
.super Ljava/lang/Object;
.source "KunlunFbFriendRequestAcitvity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

.field private final synthetic val$holder:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;

.field private final synthetic val$kunlun_fb_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$holder:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;

    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$kunlun_fb_id:Ljava/lang/String;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 156
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$holder:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;

    iget-object v1, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;->friendSelectorCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 158
    .local v0, "count":I
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$holder:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;

    iget-object v1, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;->friendSelectorCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 160
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    move-result-object v1

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->INVITE_FRIENDS_MESSAGE:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 171
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v0    # "count":I
    :cond_1
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$kunlun_fb_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$kunlun_fb_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$kunlun_fb_id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    .end local v0    # "count":I
    :cond_2
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$kunlun_fb_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->this$1:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter$1;->val$kunlun_fb_id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
