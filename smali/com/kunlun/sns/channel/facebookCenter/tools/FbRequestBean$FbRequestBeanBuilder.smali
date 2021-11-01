.class public Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;
.super Ljava/lang/Object;
.source "FbRequestBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FbRequestBeanBuilder"
.end annotation


# instance fields
.field actionType:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

.field isInvite:Z

.field message:Ljava/lang/String;

.field objectId:Ljava/lang/String;

.field title:Ljava/lang/String;

.field toFbId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;)V
    .locals 1
    .param p1, "toFbId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInvite"    # Z
    .param p5, "actionType"    # Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->objectId:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->toFbId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->title:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->message:Ljava/lang/String;

    .line 50
    iput-boolean p4, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->isInvite:Z

    .line 51
    iput-object p5, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->actionType:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    .line 52
    return-void
.end method


# virtual methods
.method public build()Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;-><init>(Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;)V

    return-object v0
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;
    .locals 0
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->objectId:Ljava/lang/String;

    .line 57
    return-object p0
.end method
