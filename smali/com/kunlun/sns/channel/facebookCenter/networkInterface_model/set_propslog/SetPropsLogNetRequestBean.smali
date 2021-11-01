.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;
.super Ljava/lang/Object;
.source "SetPropsLogNetRequestBean.java"


# instance fields
.field private actionid:Ljava/lang/String;

.field private objectid:Ljava/lang/String;

.field private receiverid:Ljava/lang/String;

.field private requestid:Ljava/lang/String;

.field private senderid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "senderid"    # Ljava/lang/String;
    .param p2, "receiverid"    # Ljava/lang/String;
    .param p3, "actionid"    # Ljava/lang/String;
    .param p4, "objectid"    # Ljava/lang/String;
    .param p5, "requestid"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->senderid:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->receiverid:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->actionid:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->objectid:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->requestid:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->senderid:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->receiverid:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->actionid:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->objectid:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->requestid:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getActionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->actionid:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->objectid:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->receiverid:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->requestid:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRequestBean;->senderid:Ljava/lang/String;

    return-object v0
.end method
