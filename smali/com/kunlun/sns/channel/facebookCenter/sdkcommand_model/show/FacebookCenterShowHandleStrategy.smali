.class public Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;
.super Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;
.source "FacebookCenterShowHandleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRespondBean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static authorizationDialog:Landroid/app/AlertDialog;

.field private static clickView:Landroid/view/View;

.field private static hideDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->hasInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$1;-><init>()V

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->setOnFlaotMenuItemClickListener(Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;)V

    .line 148
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 272
    invoke-static {p0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->checkIsLoginWithFacebook(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->hideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->requestBean:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4(Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->hideDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$5()V
    .locals 0

    .prologue
    .line 295
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->facebookLogin()V

    return-void
.end method

.method static synthetic access$6(Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 46
    sput-object p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->authorizationDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;)V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->showFloatView()V

    return-void
.end method

.method private static checkIsLoginWithFacebook(Landroid/view/View;)Z
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 274
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    sget-object v3, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v3}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v3

    check-cast v3, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->getFacebookId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 275
    .local v1, "hasFbid":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_2

    .line 276
    :cond_0
    sput-object p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->clickView:Landroid/view/View;

    .line 277
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "klUname":Ljava/lang/String;
    sget-object v3, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "klUname:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "@facebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    sget-object v3, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->authorizationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 285
    :goto_0
    const/4 v3, 0x0

    .line 289
    .end local v2    # "klUname":Ljava/lang/String;
    :goto_1
    return v3

    .line 282
    .restart local v2    # "klUname":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->facebookLogin()V

    goto :goto_0

    .line 289
    .end local v2    # "klUname":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static facebookLogin()V
    .locals 3

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFBActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 324
    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 325
    return-void
.end method

.method private static getNewMessage()V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadNetRequestBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadNetRequestBean;-><init>()V

    .line 214
    .local v0, "getNoReadNetRequestBean":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadNetRequestBean;
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->getInstance:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;

    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$3;

    invoke-direct {v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$3;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton;->requestDomainBean(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 241
    return-void
.end method

.method private initDialogAndShowFloatView()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->handlerInMainLooper:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$2;

    invoke-direct {v1, p0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$2;-><init>(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 207
    return-void
.end method

.method private showFloatView()V
    .locals 4

    .prologue
    .line 249
    :try_start_0
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    const-string v3, "\u5373\u5c06\u663e\u793a\u60ac\u6d6e\u7a97"

    invoke-static {v2, v3}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->requestBean:Ljava/lang/Object;

    check-cast v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->requestBean:Ljava/lang/Object;

    check-cast v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;->getLocation()Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->show(Landroid/app/Activity;Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V

    .line 253
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    const-string v3, "\u60ac\u6d6e\u7a97\u663e\u793a\u6210\u529f"

    invoke-static {v2, v3}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRespondBean;

    invoke-direct {v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRespondBean;-><init>()V

    invoke-virtual {p0, v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->onSdkSuccess(Ljava/lang/Object;)V

    .line 257
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->getNewMessage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->SHOW_FLOAT_BUTTON_ERROR:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->getCode()I

    move-result v2

    .line 260
    sget-object v3, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->SHOW_FLOAT_BUTTON_ERROR:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-direct {v1, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    .line 261
    .local v1, "kalendsErrorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;->setMsg(Ljava/lang/String;)V

    .line 265
    :cond_0
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->onSdkFailure(Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 152
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    const-string v3, "\u8bf7\u6c42\u6a21\u578b ------------------->"

    invoke-static {v2, v3}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v3, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->requestBean:Ljava/lang/Object;

    check-cast v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v2, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v2}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v1

    .line 156
    .local v1, "kalendsSdkParams":Lcom/kunlun/sns/core/channel/SdkParams;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/kunlun/sns/core/channel/SdkParams;->getServerID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    :cond_0
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->SHOW_FLOAT_BUTTON_ERROR:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->getCode()I

    move-result v2

    const-string v3, "\u5c1a\u672a\u9009\u62e9\u6e38\u620f\u5206\u670d"

    invoke-direct {v0, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;-><init>(ILjava/lang/String;)V

    .line 159
    .local v0, "kalendsErrorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->onSdkFailure(Ljava/lang/String;Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V

    .line 173
    .end local v0    # "kalendsErrorBean":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;
    :goto_0
    return-void

    .line 170
    :cond_1
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getInstance:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->init()V

    .line 172
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy;->initDialogAndShowFloatView()V

    goto :goto_0
.end method
