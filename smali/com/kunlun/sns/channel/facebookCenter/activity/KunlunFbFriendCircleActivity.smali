.class public Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;
.super Landroid/app/Activity;
.source "KunlunFbFriendCircleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;,
        Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private backToGameButton:Landroid/widget/Button;

.field private kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

.field private listView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

.field private mAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

.field private moreUrl:Ljava/lang/String;

.field private netRequestHandleForGetAppFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

.field private presentObjectId:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private requestDialogMessage:Ljava/lang/String;

.field private requestDialogTitle:Ljava/lang/String;

.field private titleContentTextView:Landroid/widget/TextView;

.field private titleHintTextView:Landroid/widget/TextView;

.field private titleLogoImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;

    invoke-direct {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->netRequestHandleForGetAppFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->moreUrl:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->presentObjectId:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->requestDialogTitle:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->requestDialogMessage:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->requestDialogTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->requestDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->listView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V
    .locals 0

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->hasMoreUrl()V

    return-void
.end method

.method static synthetic access$12(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->netRequestHandleForGetAppFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    return-void
.end method

.method static synthetic access$13(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->presentObjectId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->requestDialogTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->requestDialogMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    return-object v0
.end method

.method static synthetic access$17(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->titleLogoImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->titleHintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$19(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->presentObjectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->sendRequestDialog(Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$4(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->setPropsLog(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->mAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->moreUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->netRequestHandleForGetAppFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    return-object v0
.end method

.method static synthetic access$9(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->moreUrl:Ljava/lang/String;

    return-void
.end method

.method private hasMoreUrl()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->moreUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->listView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->hideHeadAndFootView()V

    .line 383
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->listView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->closeRefresh()V

    .line 385
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 341
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->netRequestHandleForGetAppFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;->idle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;-><init>()V

    .line 343
    .local v0, "getAppFriendsNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    .line 344
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;

    invoke-direct {v2, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$6;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V

    .line 343
    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->netRequestHandleForGetAppFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 378
    .end local v0    # "getAppFriendsNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 269
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 270
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->progressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->LOADING_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_title_logo"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->titleLogoImageView:Landroid/widget/ImageView;

    .line 274
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_friend_circle_title_hint"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->titleHintTextView:Landroid/widget/TextView;

    .line 276
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_title_content"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->titleContentTextView:Landroid/widget/TextView;

    .line 277
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->titleContentTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FRIEND_CIRCLE_TITLE:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_title_backgame"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->backToGameButton:Landroid/widget/Button;

    .line 280
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->backToGameButton:Landroid/widget/Button;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->BACK_TO_GAME_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->backToGameButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 282
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->backToGameButton:Landroid/widget/Button;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$3;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$3;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_friend_circle_footer"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    .line 290
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "kunlun_fb_sendmessage"

    invoke-static {v1, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->setIamgeViewbg(I)V

    .line 291
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->INVITE_FRIENDS_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->setText(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-virtual {v0, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->setTextColor(I)V

    .line 293
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$4;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$4;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->setOnImageViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_friend_circle_listview"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->listView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    .line 303
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    invoke-direct {v0, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->mAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    .line 304
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->listView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->mAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$MyAdapter;

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 305
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->listView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    const v1, -0x161513

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setBackgroundColor(I)V

    .line 306
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->listView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$5;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setOnBottomDragRefreshListener(Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;)V

    .line 338
    return-void
.end method

.method private sendRequestDialog(Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V
    .locals 3
    .param p1, "fbId"    # Ljava/lang/String;
    .param p2, "requestBean"    # Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;
    .param p3, "action"    # Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;
    .param p4, "actionButton"    # Landroid/widget/Button;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->presentObjectId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FB_REQUEST_ERROR_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 217
    :goto_0
    return-void

    .line 189
    :cond_0
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V

    .line 216
    .local v0, "listener":Lcom/kunlun/platform/android/Kunlun$FbInviteListener;
    invoke-static {p0, p2, v0}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils;->sendRequestDialog(Landroid/content/Context;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V

    goto :goto_0
.end method

.method private setPropsLog(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V
    .locals 6
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "receiverId"    # Ljava/lang/String;
    .param p3, "action"    # Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;
    .param p4, "actionButton"    # Landroid/widget/Button;

    .prologue
    .line 220
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;

    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->getFacebookId()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {p3}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->getActionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->presentObjectId:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p1

    .line 220
    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v0, "setPropsLogNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;

    invoke-direct {v2, p0, p2, p3, p4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$2;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 255
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 389
    if-nez p1, :cond_0

    .line 390
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->finish()V

    .line 394
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "kunlun_fb_friend_circle"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->setContentView(I)V

    .line 263
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->initView()V

    .line 265
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->initData()V

    .line 266
    return-void
.end method
