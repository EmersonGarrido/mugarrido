.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "KunlunFbMessageCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;


# direct methods
.method public constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V
    .locals 1

    .prologue
    .line 73
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->mList:Ljava/util/List;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    return-object v0
.end method


# virtual methods
.method public appendToList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;>;"
    if-nez p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 108
    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;

    .line 110
    .local v1, "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;
    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "kunlun_fb_message_item"

    invoke-static {v3, v4, v5}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-direct {v0, v2, p2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Landroid/view/View;)V

    .line 114
    .local v0, "holder":Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_picture()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->friendPictureImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 117
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageContentTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_content()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_type()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->inviteFriendsButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    :goto_0
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->inviteFriendsButton:Landroid/widget/Button;

    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$1;

    invoke-direct {v3, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_type()Ljava/lang/String;

    move-result-object v2

    const-string v3, "spread"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageButton:Landroid/widget/Button;

    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$2;

    invoke-direct {v3, p0, v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$2;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :goto_1
    return-object p2

    .line 122
    :cond_0
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->inviteFriendsButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_actionid()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 162
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "kunlun_fb_selector_send"

    invoke-static {v3, v4, v5}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 163
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageButton:Landroid/widget/Button;

    sget-object v3, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->GIVE_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_2
    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->getKunlun_fb_isshow()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 171
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageButton:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    :goto_3
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageButton:Landroid/widget/Button;

    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter$3;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 165
    :cond_2
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "kunlun_fb_selector_btn"

    invoke-static {v3, v4, v5}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 166
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageButton:Landroid/widget/Button;

    sget-object v3, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->RECEVICE_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 174
    :cond_3
    iget-object v2, v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;->messageButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3
.end method

.method public removeData(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;->notifyDataSetChanged()V

    .line 102
    return-void
.end method
