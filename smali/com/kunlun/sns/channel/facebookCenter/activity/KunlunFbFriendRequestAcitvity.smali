.class public Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;
.super Landroid/app/Activity;
.source "KunlunFbFriendRequestAcitvity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;,
        Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$ViewHolder;
    }
.end annotation


# instance fields
.field private INVITE_FRIENDS_NUM:I

.field private final TAG:Ljava/lang/String;

.field private after:Ljava/lang/String;

.field private backToGameButton:Landroid/widget/Button;

.field private faceBookInvitableFriendsAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

.field private friendsCheckedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private friendsContentLayout:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

.field private hintString:Ljava/lang/String;

.field private hintTextView:Landroid/widget/TextView;

.field private kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

.field private netRequestHandleForGetAllFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

.field private objectid:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private requestDialogMessage:Ljava/lang/String;

.field private requestDialogTitle:Ljava/lang/String;

.field private titleContentTextView:Landroid/widget/TextView;

.field private titleLogoImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;

    invoke-direct {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->netRequestHandleForGetAllFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->friendsCheckedMap:Ljava/util/Map;

    .line 78
    const/16 v0, 0x1e

    iput v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->INVITE_FRIENDS_NUM:I

    .line 80
    const-string v0, "No any more friends!"

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->after:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->requestDialogTitle:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->requestDialogMessage:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->objectid:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->hintString:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-direct {v0, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->faceBookInvitableFriendsAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->friendsCheckedMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->INVITE_FRIENDS_NUM:I

    return v0
.end method

.method static synthetic access$10(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->requestDialogMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->hintString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->hintString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->titleLogoImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->showInvitableFriends()V

    return-void
.end method

.method static synthetic access$3(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->inviteFriendsWithFb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->faceBookInvitableFriendsAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->friendsContentLayout:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->after:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->notifyServiceRequestHasSent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->objectid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->requestDialogTitle:Ljava/lang/String;

    return-void
.end method

.method private getData()V
    .locals 3

    .prologue
    .line 363
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->netRequestHandleForGetAllFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;->idle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRequestBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRequestBean;-><init>()V

    .line 365
    .local v0, "getAllFriendsNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    .line 366
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;

    invoke-direct {v2, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$7;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V

    .line 365
    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->netRequestHandleForGetAllFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 399
    .end local v0    # "getAllFriendsNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRequestBean;
    :cond_0
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->showInvitableFriends()V

    .line 400
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 204
    const-string v0, "id"

    const-string v1, "kunlun_fb_title_content"

    invoke-static {p0, v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->titleContentTextView:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_friend_request_hint_msg"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->hintTextView:Landroid/widget/TextView;

    .line 207
    const-string v0, "id"

    const-string v1, "kunlun_fb_title_logo"

    invoke-static {p0, v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->titleLogoImageView:Landroid/widget/ImageView;

    .line 209
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_friends_content_Layout"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->friendsContentLayout:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    .line 210
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->friendsContentLayout:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->faceBookInvitableFriendsAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$FaceBookInvitableFriendsAdapter;

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 211
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->friendsContentLayout:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$1;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setOnBottomDragRefreshListener(Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;)V

    .line 218
    const-string v0, "id"

    const-string v1, "kunlun_fb_title_backgame"

    invoke-static {p0, v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->backToGameButton:Landroid/widget/Button;

    .line 219
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->backToGameButton:Landroid/widget/Button;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->BACK_TO_GAME_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->backToGameButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 222
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->backToGameButton:Landroid/widget/Button;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$2;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$2;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->titleContentTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FRIENDS_REQUEST_TITLE:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_friend_circle_footer"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    .line 232
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "kunlun_fb_sendmessage"

    invoke-static {v1, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->setIamgeViewbg(I)V

    .line 233
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->SEND_REQUEST_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->setText(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-virtual {v0, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->kL_BottomLayout:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$3;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$3;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->setOnImageViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-void
.end method

.method private inviteFriendsWithFb(Ljava/lang/String;)V
    .locals 8
    .param p1, "tokens"    # Ljava/lang/String;

    .prologue
    .line 304
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->requestDialogTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->requestDialogMessage:Ljava/lang/String;

    const/4 v4, 0x1

    sget-object v5, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->INVITE:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;)V

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->build()Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;

    move-result-object v7

    .line 306
    .local v7, "requestBean":Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;
    new-instance v6, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$5;

    invoke-direct {v6, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$5;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V

    .line 342
    .local v6, "listener":Lcom/kunlun/platform/android/Kunlun$FbInviteListener;
    invoke-static {p0, v7, v6}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils;->sendRequestDialog(Landroid/content/Context;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V

    .line 343
    return-void
.end method

.method private notifyServiceRequestHasSent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "userIds"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 346
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;

    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v1

    check-cast v1, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->getFacebookId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "3"

    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->objectid:Ljava/lang/String;

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .local v0, "setPropsLogNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$6;

    invoke-direct {v2, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$6;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 360
    return-void
.end method

.method private showInvitableFriends()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;

    invoke-direct {v0, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity$4;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;)V

    .line 299
    .local v0, "requestListener":Lcom/kunlun/platform/android/Kunlun$RequestListener;
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->after:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils;->getInvitableFriends(Landroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    .line 301
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 410
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 411
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 412
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "kunlun_fb_friends"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->setContentView(I)V

    .line 196
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->progressDialog:Landroid/app/ProgressDialog;

    .line 197
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->progressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->LOADING_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->initView()V

    .line 200
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->getData()V

    .line 201
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 424
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 418
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 404
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 406
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 430
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 434
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 435
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;->netRequestHandleForGetAllFriends:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    invoke-interface {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;->cancel()V

    .line 436
    return-void
.end method
