.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;
.super Ljava/lang/Object;
.source "AppFriendsItemBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x60e0af0dbcc3d551L


# instance fields
.field private askfor_isavailable:Z

.field private askfor_tip:Ljava/lang/String;

.field private kunlun_fb_id:Ljava/lang/String;

.field private kunlun_fb_name:Ljava/lang/String;

.field private kunlun_fb_picture:Ljava/lang/String;

.field private present_isavailable:Z

.field private present_tip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "kunlun_fb_id"    # Ljava/lang/String;
    .param p2, "kunlun_fb_name"    # Ljava/lang/String;
    .param p3, "kunlun_fb_picture"    # Ljava/lang/String;
    .param p4, "present_tip"    # Ljava/lang/String;
    .param p5, "askfor_tip"    # Ljava/lang/String;
    .param p6, "present_isavailable"    # Z
    .param p7, "askfor_isavailable"    # Z

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_id:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_name:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_picture:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->present_tip:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->askfor_tip:Ljava/lang/String;

    .line 24
    iput-boolean p6, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->present_isavailable:Z

    .line 25
    iput-boolean p7, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->askfor_isavailable:Z

    .line 26
    return-void
.end method


# virtual methods
.method public getAskfor_tip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->askfor_tip:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_id:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_name:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_picture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_picture:Ljava/lang/String;

    return-object v0
.end method

.method public getPresent_tip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->present_tip:Ljava/lang/String;

    return-object v0
.end method

.method public isAskfor_isavailable()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->askfor_isavailable:Z

    return v0
.end method

.method public isPresent_isavailable()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->present_isavailable:Z

    return v0
.end method

.method public setAskfor_isavailable(Z)V
    .locals 0
    .param p1, "askfor_isavailable"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->askfor_isavailable:Z

    .line 82
    return-void
.end method

.method public setAskfor_tip(Ljava/lang/String;)V
    .locals 0
    .param p1, "askfor_tip"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->askfor_tip:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setKunlun_fb_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "kunlun_fb_id"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setKunlun_fb_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "kunlun_fb_name"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_name:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setKunlun_fb_picture(Ljava/lang/String;)V
    .locals 0
    .param p1, "kunlun_fb_picture"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->kunlun_fb_picture:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPresent_isavailable(Z)V
    .locals 0
    .param p1, "present_isavailable"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->present_isavailable:Z

    .line 74
    return-void
.end method

.method public setPresent_tip(Ljava/lang/String;)V
    .locals 0
    .param p1, "present_tip"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_app_friends/AppFriendsItemBean;->present_tip:Ljava/lang/String;

    .line 58
    return-void
.end method
