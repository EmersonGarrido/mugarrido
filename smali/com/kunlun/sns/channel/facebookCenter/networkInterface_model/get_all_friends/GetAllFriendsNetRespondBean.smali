.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;
.super Ljava/lang/Object;
.source "GetAllFriendsNetRespondBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5176ae29f3aa1696L


# instance fields
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

.field private logo_url:Ljava/lang/String;

.field private objectid:Ljava/lang/String;

.field private request_dialog_message:Ljava/lang/String;

.field private request_dialog_title:Ljava/lang/String;

.field private request_friend_hint:Ljava/lang/String;

.field private retmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "request_friend_hint"    # Ljava/lang/String;
    .param p3, "logo_url"    # Ljava/lang/String;
    .param p4, "request_dialog_title"    # Ljava/lang/String;
    .param p5, "request_dialog_message"    # Ljava/lang/String;
    .param p6, "retmsg"    # Ljava/lang/String;
    .param p7, "objectid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "awards":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->awards:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_friend_hint:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->logo_url:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_dialog_title:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_dialog_message:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->retmsg:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->objectid:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static getSerialversionuid()J
    .locals 2

    .prologue
    .line 78
    const-wide v0, 0x5176ae29f3aa1696L    # 2.7537729349893828E84

    return-wide v0
.end method


# virtual methods
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
    .line 30
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->awards:Ljava/util/List;

    return-object v0
.end method

.method public getLogo_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->logo_url:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->objectid:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_dialog_message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_dialog_message:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_dialog_title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_dialog_title:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_friend_hint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_friend_hint:Ljava/lang/String;

    return-object v0
.end method

.method public getRetmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->retmsg:Ljava/lang/String;

    return-object v0
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
    .line 34
    .local p1, "awards":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->awards:Ljava/util/List;

    .line 35
    return-void
.end method

.method public setLogo_url(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo_url"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->logo_url:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRequest_dialog_message(Ljava/lang/String;)V
    .locals 0
    .param p1, "request_dialog_message"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_dialog_message:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setRequest_dialog_title(Ljava/lang/String;)V
    .locals 0
    .param p1, "request_dialog_title"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_dialog_title:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setRequest_friend_hint(Ljava/lang/String;)V
    .locals 0
    .param p1, "request_friend_hint"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->request_friend_hint:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setRetmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "retmsg"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/GetAllFriendsNetRespondBean;->retmsg:Ljava/lang/String;

    .line 75
    return-void
.end method
