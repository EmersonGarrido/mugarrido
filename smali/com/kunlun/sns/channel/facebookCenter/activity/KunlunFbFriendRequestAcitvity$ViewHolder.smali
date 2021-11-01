.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;
.super Ljava/lang/Object;
.source "KunlunFbFriendRequestAcitvity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field friendNicknameTextView:Landroid/widget/TextView;

.field friendProfileImageView:Landroid/widget/ImageView;

.field friendSelectorCheckBox:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;


# direct methods
.method public constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Landroid/view/View;)V
    .locals 3
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_picture"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;->friendProfileImageView:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_name"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;->friendNicknameTextView:Landroid/widget/TextView;

    .line 187
    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_select"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;->friendSelectorCheckBox:Landroid/widget/CheckBox;

    .line 188
    return-void
.end method
