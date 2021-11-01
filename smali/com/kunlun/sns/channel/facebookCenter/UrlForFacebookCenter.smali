.class public final Lcom/kunlun/sns/channel/facebookCenter/UrlForFacebookCenter;
.super Ljava/lang/Object;
.source "UrlForFacebookCenter.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/engine_helper/IUrlForChannel;


# static fields
.field public static final fbFansPageUrl:Ljava/lang/String; = "jump_fanspage"

.field public static final getFbFriendListUrl:Ljava/lang/String; = "get_all_friends"

.field public static final getFeedInfoUrl:Ljava/lang/String; = "get_feed_info"

.field public static final getMessageListUrl:Ljava/lang/String; = "get_msg_list"

.field public static final getNewMessgeUrl:Ljava/lang/String; = "get_no_read"

.field public static final getPresentListUrl:Ljava/lang/String; = "get_app_friends"

.field public static final initServiceUrl:Ljava/lang/String; = "user_login"

.field public static final presentGiftUrl:Ljava/lang/String; = "set_propslog"

.field public static final receiveItemUrl:Ljava/lang/String; = "get_game_props"

.field public static final uploadFbShareLogUrl:Ljava/lang/String; = "feed_log"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getMainUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "location":Ljava/lang/String;
    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/KunlunSNS;->isDebugModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "world"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    const-string v0, "world-debug"

    .line 50
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://muorigin.ro/api?act=index."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 47
    :cond_1
    const-string v0, "debug"

    goto :goto_0
.end method
