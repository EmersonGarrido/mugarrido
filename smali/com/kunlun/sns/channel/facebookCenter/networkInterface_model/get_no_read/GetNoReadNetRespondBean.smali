.class public final Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadNetRespondBean;
.super Ljava/lang/Object;
.source "GetNoReadNetRespondBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x6756f13e80e8f20eL


# instance fields
.field private retmsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "retmsg"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadNetRespondBean;->retmsg:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getRetmsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_no_read/GetNoReadNetRespondBean;->retmsg:Ljava/lang/String;

    return-object v0
.end method
