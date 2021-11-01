.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;
.super Ljava/lang/Object;
.source "MessageItemBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5e60c71bc5e9a013L


# instance fields
.field private kunlun_fb_actionid:I

.field private kunlun_fb_award_picture:Ljava/lang/String;

.field private kunlun_fb_content:Ljava/lang/String;

.field private kunlun_fb_href:Ljava/lang/String;

.field private kunlun_fb_id:Ljava/lang/String;

.field private kunlun_fb_isshow:I

.field private kunlun_fb_message:Ljava/lang/String;

.field private kunlun_fb_name:Ljava/lang/String;

.field private kunlun_fb_objectid:Ljava/lang/String;

.field private kunlun_fb_picture:Ljava/lang/String;

.field private kunlun_fb_receiverid:Ljava/lang/String;

.field private kunlun_fb_requestid:Ljava/lang/String;

.field private kunlun_fb_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "kunlun_fb_id"    # Ljava/lang/String;
    .param p2, "kunlun_fb_message"    # Ljava/lang/String;
    .param p3, "kunlun_fb_picture"    # Ljava/lang/String;
    .param p4, "kunlun_fb_award_picture"    # Ljava/lang/String;
    .param p5, "kunlun_fb_name"    # Ljava/lang/String;
    .param p6, "kunlun_fb_actionid"    # I
    .param p7, "kunlun_fb_objectid"    # Ljava/lang/String;
    .param p8, "kunlun_fb_requestid"    # Ljava/lang/String;
    .param p9, "kunlun_fb_content"    # Ljava/lang/String;
    .param p10, "kunlun_fb_receiverid"    # Ljava/lang/String;
    .param p11, "kunlun_fb_type"    # Ljava/lang/String;
    .param p12, "kunlun_fb_href"    # Ljava/lang/String;
    .param p13, "kunlun_fb_isshow"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_id:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_message:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_picture:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_award_picture:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_name:Ljava/lang/String;

    .line 30
    iput p6, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_actionid:I

    .line 31
    iput-object p7, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_objectid:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_requestid:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_content:Ljava/lang/String;

    .line 34
    iput-object p10, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_receiverid:Ljava/lang/String;

    .line 35
    iput-object p11, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_type:Ljava/lang/String;

    .line 36
    iput-object p12, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_href:Ljava/lang/String;

    .line 37
    iput p13, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_isshow:I

    .line 38
    return-void
.end method


# virtual methods
.method public getKunlun_fb_actionid()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_actionid:I

    return v0
.end method

.method public getKunlun_fb_award_picture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_award_picture:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_content()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_content:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_href()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_href:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_id:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_isshow()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_isshow:I

    return v0
.end method

.method public getKunlun_fb_message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_message:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_name:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_objectid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_objectid:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_picture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_picture:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_receiverid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_receiverid:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_requestid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_requestid:Ljava/lang/String;

    return-object v0
.end method

.method public getKunlun_fb_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;->kunlun_fb_type:Ljava/lang/String;

    return-object v0
.end method
