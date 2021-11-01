.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;
.super Ljava/lang/Object;
.source "GetAppFriendsNetRespondBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x23dd9e405c65c348L


# instance fields
.field private askfor_dialog_message:Ljava/lang/String;

.field private askfor_dialog_title:Ljava/lang/String;

.field private awards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private friend_circle_title_hint:Ljava/lang/String;

.field private logo_url:Ljava/lang/String;

.field private more_url:Ljava/lang/String;

.field private objectid:Ljava/lang/String;

.field private request_dialog_message:Ljava/lang/String;

.field private request_dialog_title:Ljava/lang/String;

.field private retmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "logo_url"    # Ljava/lang/String;
    .param p4, "more_url"    # Ljava/lang/String;
    .param p5, "friend_circle_title_hint"    # Ljava/lang/String;
    .param p6, "objectid"    # Ljava/lang/String;
    .param p7, "request_dialog_title"    # Ljava/lang/String;
    .param p8, "request_dialog_message"    # Ljava/lang/String;
    .param p9, "askfor_dialog_title"    # Ljava/lang/String;
    .param p10, "askfor_dialog_message"    # Ljava/lang/String;
    .param p11, "retmsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;>;"
    .local p2, "awards":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->data:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->awards:Ljava/util/List;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->logo_url:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->more_url:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->friend_circle_title_hint:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->objectid:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->request_dialog_title:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->request_dialog_message:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->retmsg:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->data:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->awards:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->logo_url:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->more_url:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->friend_circle_title_hint:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->objectid:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->request_dialog_title:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->request_dialog_message:Ljava/lang/String;

    .line 38
    iput-object p9, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->askfor_dialog_title:Ljava/lang/String;

    .line 39
    iput-object p10, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->askfor_dialog_message:Ljava/lang/String;

    .line 40
    iput-object p11, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->retmsg:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getAskfor_dialog_message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->askfor_dialog_message:Ljava/lang/String;

    return-object v0
.end method

.method public getAskfor_dialog_title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->askfor_dialog_title:Ljava/lang/String;

    return-object v0
.end method

.method public getAwards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->awards:Ljava/util/List;

    return-object v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getFriend_circle_title_hint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->friend_circle_title_hint:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->logo_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMore_url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->more_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->more_url:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v1}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/sns/core/channel/SdkParams;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->more_url:Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->more_url:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->objectid:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_dialog_message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->request_dialog_message:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_dialog_title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->request_dialog_title:Ljava/lang/String;

    return-object v0
.end method

.method public getRetmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->retmsg:Ljava/lang/String;

    return-object v0
.end method

.method public setAskfor_dialog_message(Ljava/lang/String;)V
    .locals 0
    .param p1, "askfor_dialog_message"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->askfor_dialog_message:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setAskfor_dialog_title(Ljava/lang/String;)V
    .locals 0
    .param p1, "askfor_dialog_title"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->askfor_dialog_title:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setAwards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "awards":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->awards:Ljava/util/List;

    .line 57
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
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
    .line 48
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;>;"
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->data:Ljava/util/List;

    .line 49
    return-void
.end method

.method public setFriend_circle_title_hint(Ljava/lang/String;)V
    .locals 0
    .param p1, "friend_circle_title_hint"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->friend_circle_title_hint:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setLogo_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo_url"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->logo_url:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMore_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "more_url"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->more_url:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setObjectid(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectid"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->objectid:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setRequest_dialog_message(Ljava/lang/String;)V
    .locals 0
    .param p1, "request_dialog_message"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->request_dialog_message:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setRequest_dialog_title(Ljava/lang/String;)V
    .locals 0
    .param p1, "request_dialog_title"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->request_dialog_title:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRetmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "retmsg"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/GetAppFriendsNetRespondBean;->retmsg:Ljava/lang/String;

    .line 132
    return-void
.end method
