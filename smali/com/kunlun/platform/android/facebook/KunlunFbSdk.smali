.class public Lcom/kunlun/platform/android/facebook/KunlunFbSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FRIENDS_LIMIT:Ljava/lang/String; = "30"

.field public static final INVITE_ACTION_TYPE:Ljava/lang/String; = "request_action_type"

.field public static final INVITE_MESSAGE:Ljava/lang/String; = "request_message"

.field public static final INVITE_OBJECT_ID:Ljava/lang/String; = "object_id"

.field public static final INVITE_RESULT_REQUEST_ID:Ljava/lang/String; = "requst_id"

.field public static final INVITE_RESULT_REQUEST_RECIPIENTS:Ljava/lang/String; = "request_recipients"

.field public static final INVITE_TITLE:Ljava/lang/String; = "request_title"

.field public static final INVITE_TO:Ljava/lang/String; = "request_to"

.field public static final NO_ANY_MORE_FRIENDS:Ljava/lang/String; = "No any more friends!"

.field public static final RESULT_CANCEL:I = -0x2

.field public static final RESULT_ERROR:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SHARE_DESCRIPTION:Ljava/lang/String; = "share_description"

.field public static final SHARE_IMAGE:Ljava/lang/String; = "share_image"

.field public static final SHARE_LINK:Ljava/lang/String; = "share_link"

.field public static final SHARE_TITLE:Ljava/lang/String; = "share_title"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_LINK:Ljava/lang/String; = "user_link"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"

.field public static final USER_PHOTO:Ljava/lang/String; = "user_photo"

.field private static ep:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

.field public static isShare:Z


# instance fields
.field accessToken:Lcom/facebook/AccessToken;

.field private el:Lcom/facebook/CallbackManager;

.field private em:Lcom/facebook/AccessTokenTracker;

.field private en:Lcom/facebook/ProfileTracker;

.field private eo:Lcom/facebook/Profile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->ep:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->isShare:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->el:Lcom/facebook/CallbackManager;

    new-instance v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$5;

    invoke-direct {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$5;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->en:Lcom/facebook/ProfileTracker;

    new-instance v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$6;

    invoke-direct {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$6;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->em:Lcom/facebook/AccessTokenTracker;

    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->addLoggingBehavior(Lcom/facebook/LoggingBehavior;)V

    return-void
.end method

.method private a(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/facebook/GraphRequest;

    iget-object v1, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->accessToken:Lcom/facebook/AccessToken;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;

    invoke-direct {v5, p2}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;-><init>(Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public static destory()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->ep:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    return-void
.end method

.method public static fbLogout()V
    .locals 1

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;
    .locals 1

    invoke-static {}, Lcom/facebook/FacebookSdk;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->ep:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    if-nez v0, :cond_1

    new-instance v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    invoke-direct {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->ep:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    :cond_1
    sget-object v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->ep:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 4

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->el:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;

    invoke-direct {v2, p0, p2}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;-><init>(Lcom/kunlun/platform/android/facebook/KunlunFbSdk;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "public_profile"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "user_friends"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

.method public getCallbackManager()Lcom/facebook/CallbackManager;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->el:Lcom/facebook/CallbackManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->el:Lcom/facebook/CallbackManager;

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->el:Lcom/facebook/CallbackManager;

    return-object v0
.end method

.method public getFriends(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request error,user dont login"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onIOException(Ljava/io/IOException;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/me/friends"

    invoke-direct {p0, p1, p2, v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->a(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInvitableFriends(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request error,user dont login"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onIOException(Ljava/io/IOException;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "/me/invitable_friends"

    invoke-direct {p0, p1, p2, v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->a(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUserInfos(Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
    .locals 5

    invoke-static {}, Lcom/facebook/Profile;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->eo:Lcom/facebook/Profile;

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->eo:Lcom/facebook/Profile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "response data is null"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "user_id"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->eo:Lcom/facebook/Profile;

    invoke-virtual {v3}, Lcom/facebook/Profile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->eo:Lcom/facebook/Profile;

    invoke-virtual {v2}, Lcom/facebook/Profile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_link"

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->eo:Lcom/facebook/Profile;

    invoke-virtual {v2}, Lcom/facebook/Profile;->getLinkUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_photo"

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->eo:Lcom/facebook/Profile;

    const/16 v3, 0x41

    const/16 v4, 0x41

    invoke-virtual {v2, v3, v4}, Lcom/facebook/Profile;->getProfilePictureUri(II)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request error,response is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public invite(Landroid/os/Bundle;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user dont login"

    invoke-interface {p3, v0}, Lcom/kunlun/platform/android/Kunlun$FbInviteListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "request_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "request_to"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "request_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "object_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "request_action_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    new-instance v5, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v1, v4}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_2
    invoke-virtual {v1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-direct {v1, p2}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->el:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$3;

    invoke-direct {v3, p3}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$3;-><init>(Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    invoke-virtual {v1, v0}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/facebook/share/model/GameRequestContent$ActionType;->SEND:Lcom/facebook/share/model/GameRequestContent$ActionType;

    goto :goto_1
.end method

.method public isLogin()Z
    .locals 1

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->accessToken:Lcom/facebook/AccessToken;

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->accessToken:Lcom/facebook/AccessToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public share(Landroid/os/Bundle;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 7

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "user dont login"

    invoke-interface {p3, v0, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->isShare:Z

    const-string v0, "share_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "share_description"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "share_link"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "share_image"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v4, p2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->el:Lcom/facebook/CallbackManager;

    new-instance v6, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$2;

    invoke-direct {v6, p3}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$2;-><init>(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    invoke-virtual {v4, v5, v6}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    const-class v5, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static {v5}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v5}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-virtual {v5, v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startTracking()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->em:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->em:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->startTracking()V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->en:Lcom/facebook/ProfileTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->en:Lcom/facebook/ProfileTracker;

    invoke-virtual {v0}, Lcom/facebook/ProfileTracker;->startTracking()V

    :cond_1
    return-void
.end method

.method public stopTracking()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->em:Lcom/facebook/AccessTokenTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->em:Lcom/facebook/AccessTokenTracker;

    invoke-virtual {v0}, Lcom/facebook/AccessTokenTracker;->stopTracking()V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->en:Lcom/facebook/ProfileTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->en:Lcom/facebook/ProfileTracker;

    invoke-virtual {v0}, Lcom/facebook/ProfileTracker;->stopTracking()V

    :cond_1
    return-void
.end method
