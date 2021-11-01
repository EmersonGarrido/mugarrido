.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;
.super Ljava/lang/Object;
.source "Award.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x34edf361575373cbL


# instance fields
.field private bottom_img:Ljava/lang/String;

.field private prompt_img:Ljava/lang/String;

.field private prompt_msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "prompt_img"    # Ljava/lang/String;
    .param p2, "bottom_img"    # Ljava/lang/String;
    .param p3, "prompt_msg"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->prompt_img:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->bottom_img:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->prompt_msg:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getBottom_img()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->bottom_img:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt_img()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->prompt_img:Ljava/lang/String;

    return-object v0
.end method

.method public getPrompt_msg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->prompt_msg:Ljava/lang/String;

    return-object v0
.end method

.method public setBottom_img(Ljava/lang/String;)V
    .locals 0
    .param p1, "bottom_img"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->bottom_img:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setPrompt_img(Ljava/lang/String;)V
    .locals 0
    .param p1, "prompt_img"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->prompt_img:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPrompt_msg(Ljava/lang/String;)V
    .locals 0
    .param p1, "prompt_msg"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->prompt_msg:Ljava/lang/String;

    .line 44
    return-void
.end method
