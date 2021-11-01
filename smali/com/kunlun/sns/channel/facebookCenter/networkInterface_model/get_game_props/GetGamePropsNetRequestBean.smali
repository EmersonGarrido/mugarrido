.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;
.super Ljava/lang/Object;
.source "GetGamePropsNetRequestBean.java"


# instance fields
.field private actionid:Ljava/lang/String;

.field private receiverid:Ljava/lang/String;

.field private requestid:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "requestid"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "receiverid"    # Ljava/lang/String;
    .param p4, "actionid"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->requestid:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->type:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->receiverid:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->actionid:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->requestid:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->type:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->receiverid:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->actionid:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getActionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->actionid:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->receiverid:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->requestid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_game_props/GetGamePropsNetRequestBean;->type:Ljava/lang/String;

    return-object v0
.end method
