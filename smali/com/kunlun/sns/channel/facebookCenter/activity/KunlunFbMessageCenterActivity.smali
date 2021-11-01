.class public Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;
.super Landroid/app/Activity;
.source "KunlunFbMessageCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;,
        Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private final ACTION_SEND:I

.field private final TAG:Ljava/lang/String;

.field private backToGameButton:Landroid/widget/Button;

.field private mAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

.field private messageCenterHintString:Ljava/lang/String;

.field private messageCenterHintTextView:Landroid/widget/TextView;

.field private messageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private messagesListView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

.field private moreUrl:Ljava/lang/String;

.field private netRequestHandleForGetMsgList:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private titleContentTextView:Landroid/widget/TextView;

.field private titleLogoImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->ACTION_SEND:I

    .line 54
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;

    invoke-direct {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->netRequestHandleForGetMsgList:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messageCenterHintString:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->hideInviteButton(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->hasMoreUrl()V

    return-void
.end method

.method static synthetic access$11(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->netRequestHandleForGetMsgList:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    return-void
.end method

.method static synthetic access$12(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messageCenterHintString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messageCenterHintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messageCenterHintString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->titleLogoImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 341
    invoke-direct/range {p0 .. p7}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messageOperation(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->moreUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->netRequestHandleForGetMsgList:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    return-object v0
.end method

.method static synthetic access$5(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messageItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$6(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->mAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    return-object v0
.end method

.method static synthetic access$7(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messageItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->moreUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)Lcom/kunlun/sns/widget/KL_DragToReFreshView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messagesListView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    return-object v0
.end method

.method private getGamesItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "receiverId"    # Ljava/lang/String;
    .param p4, "actionId"    # I
    .param p5, "position"    # I

    .prologue
    .line 349
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .local v0, "getGamePropsNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;

    invoke-direct {v2, p0, p5}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$4;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;I)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    goto :goto_0
.end method

.method private hasMoreUrl()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->moreUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messagesListView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->hideHeadAndFootView()V

    .line 334
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messagesListView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    invoke-virtual {v0}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->closeRefresh()V

    .line 336
    :cond_0
    return-void
.end method

.method private hideInviteButton(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v0, "g0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "spread"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initGetData()V
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->netRequestHandleForGetMsgList:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    invoke-interface {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;->idle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;-><init>()V

    .line 298
    .local v0, "getMsgListNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    .line 299
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;

    invoke-direct {v2, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$3;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V

    .line 298
    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->netRequestHandleForGetMsgList:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 329
    .end local v0    # "getMsgListNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRequestBean;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_message_center_hint"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messageCenterHintTextView:Landroid/widget/TextView;

    .line 237
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_title_logo"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->titleLogoImageView:Landroid/widget/ImageView;

    .line 239
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_title_content"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->titleContentTextView:Landroid/widget/TextView;

    .line 241
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->titleContentTextView:Landroid/widget/TextView;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->MESSAGE_CENTER_TITLE:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_title_backgame"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->backToGameButton:Landroid/widget/Button;

    .line 244
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->backToGameButton:Landroid/widget/Button;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->BACK_TO_GAME_BUTTON:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->backToGameButton:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->backToGameButton:Landroid/widget/Button;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$1;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "kunlun_fb_message_listview"

    invoke-static {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messagesListView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    .line 254
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messagesListView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    const v1, -0x161513

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setBackgroundColor(I)V

    .line 255
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    invoke-direct {v0, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->mAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    .line 256
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messagesListView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->mAdapter:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$MyAdapter;

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 257
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->messagesListView:Lcom/kunlun/sns/widget/KL_DragToReFreshView;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$2;-><init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/sns/widget/KL_DragToReFreshView;->setOnBottomDragRefreshListener(Lcom/kunlun/sns/widget/KL_DragToReFreshView$OnRefreshListener;)V

    .line 293
    return-void
.end method

.method private messageOperation(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "senderid"    # Ljava/lang/String;
    .param p2, "receiverid"    # Ljava/lang/String;
    .param p3, "actionId"    # I
    .param p4, "objectid"    # Ljava/lang/String;
    .param p5, "requestid"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "position"    # I

    .prologue
    .line 342
    move-object v0, p0

    move-object v1, p5

    move-object v2, p6

    move-object v3, p2

    move v4, p3

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->getGamesItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 343
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    sget v0, Lcom/kunlun/sns/R$layout;->kunlun_fb_message_center:I

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->setContentView(I)V

    .line 226
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 227
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->progressDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->LOADING_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 229
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->initView()V

    .line 231
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->initGetData()V

    .line 232
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 382
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 384
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->netRequestHandleForGetMsgList:Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    invoke-interface {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;->cancel()V

    .line 385
    return-void
.end method
