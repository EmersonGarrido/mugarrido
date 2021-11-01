.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;
.super Ljava/lang/Object;
.source "LoginNetRespondBean.java"


# instance fields
.field private ext_buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private is_show_only_fb:Z

.field private retcode:Ljava/lang/String;

.field private retmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->is_show_only_fb:Z

    .line 5
    return-void
.end method


# virtual methods
.method public getExtButtons()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->ext_buttons:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRetcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->retcode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->retmsg:Ljava/lang/String;

    return-object v0
.end method

.method public isShowOnlyFb()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->is_show_only_fb:Z

    return v0
.end method

.method public setRetcode(Ljava/lang/String;)V
    .locals 0
    .param p1, "retcode"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->retcode:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setRetmsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "retmsg"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->retmsg:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LoginNetRespondBean [ext_buttons="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->ext_buttons:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_show_only_fb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->is_show_only_fb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , retcode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/LoginNetRespondBean;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
