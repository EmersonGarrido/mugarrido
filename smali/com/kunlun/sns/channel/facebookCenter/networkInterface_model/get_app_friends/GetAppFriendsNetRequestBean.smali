.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;
.super Ljava/lang/Object;
.source "GetAppFriendsNetRequestBean.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/IMoreUrlNetRequestBean;


# instance fields
.field private more_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;->more_url:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "more_url"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;->more_url:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;->more_url:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getMoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRequestBean;->more_url:Ljava/lang/String;

    return-object v0
.end method
