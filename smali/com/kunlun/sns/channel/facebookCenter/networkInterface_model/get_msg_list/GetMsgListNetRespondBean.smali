.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;
.super Ljava/lang/Object;
.source "GetMsgListNetRespondBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x163bcb0173642c41L


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private logo_url:Ljava/lang/String;

.field private message_center_hint:Ljava/lang/String;

.field private more_url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "more_url"    # Ljava/lang/String;
    .param p3, "logo_url"    # Ljava/lang/String;
    .param p4, "message_center_hint"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->data:Ljava/util/List;

    .line 21
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->more_url:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->logo_url:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->message_center_hint:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/MessageItemBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->data:Ljava/util/List;

    return-object v0
.end method

.method public getLogo_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->logo_url:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage_center_hint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->message_center_hint:Ljava/lang/String;

    return-object v0
.end method

.method public getMore_url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->more_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->more_url:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->more_url:Ljava/lang/String;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_msg_list/GetMsgListNetRespondBean;->more_url:Ljava/lang/String;

    return-object v0
.end method
