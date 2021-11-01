.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "KunlunFbFriendCircleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION:[I


# instance fields
.field dataSource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION()[I
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->$SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->values()[Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ASKFOR:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->INVITE:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->SEND:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->$SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V
    .locals 1

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->dataSource:Ljava/util/List;

    .line 77
    return-void
.end method

.method static synthetic access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

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
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;>;"
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 125
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;

    .line 128
    .local v2, "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;
    if-nez p2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {v4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "kunlun_fb_friend_circle_item"

    invoke-static {v4, v5, v6}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 131
    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-direct {v1, v3, p2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Landroid/view/View;)V

    .line 133
    .local v1, "holder":Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->getKunlun_fb_picture()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->userProfileImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 140
    iget-object v3, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->userNickNameTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->getKunlun_fb_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->presentTipTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->getPresent_tip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->presentButton:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->isPresent_isavailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 143
    iget-object v3, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->presentButton:Landroid/widget/Button;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->isPresent_isavailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iget-object v3, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->presentButton:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->getKunlun_fb_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->SEND:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v5}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->isPresent_isavailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    iget-object v3, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->presentButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    :goto_1
    iget-object v0, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->presentButton:Landroid/widget/Button;

    .line 153
    .local v0, "actionButton":Landroid/widget/Button;
    iget-object v3, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->presentButton:Landroid/widget/Button;

    new-instance v4, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-object p2

    .line 135
    .end local v0    # "actionButton":Landroid/widget/Button;
    .end local v1    # "holder":Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;

    .restart local v1    # "holder":Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;
    goto :goto_0

    .line 149
    :cond_1
    iget-object v3, v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;->presentButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public modifyList(Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;)V
    .locals 5
    .param p1, "fbId"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->dataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;

    .line 89
    .local v0, "appFriendsItemBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;
    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->getKunlun_fb_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;->$SWITCH_TABLE$com$kunlun$sns$channel$facebookCenter$tools$FbRequestBean$SETPROPSLOG_ACTION()[I

    move-result-object v2

    invoke-virtual {p2}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-virtual {v0, v4}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->setPresent_isavailable(Z)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {v0, v4}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->setAskfor_isavailable(Z)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
