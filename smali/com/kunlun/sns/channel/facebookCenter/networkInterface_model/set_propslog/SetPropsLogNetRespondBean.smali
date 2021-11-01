.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRespondBean;
.super Ljava/lang/Object;
.source "SetPropsLogNetRespondBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5f54167eede31852L


# instance fields
.field private retmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "retmsg"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRespondBean;->retmsg:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getRetmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/set_propslog/SetPropsLogNetRespondBean;->retmsg:Ljava/lang/String;

    return-object v0
.end method
