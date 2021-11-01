.class public Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;
.super Ljava/lang/Object;
.source "FbRequestBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;,
        Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;
    }
.end annotation


# instance fields
.field actionType:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

.field isInvite:Z

.field message:Ljava/lang/String;

.field objectId:Ljava/lang/String;

.field title:Ljava/lang/String;

.field toFbId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;)V
    .locals 1
    .param p1, "bulder"    # Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->actionType:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->actionType:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    .line 68
    iget-object v0, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->toFbId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->toFbId:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->title:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->message:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->objectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->objectId:Ljava/lang/String;

    .line 72
    iget-boolean v0, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;->isInvite:Z

    iput-boolean v0, p0, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->isInvite:Z

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;-><init>(Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$FbRequestBeanBuilder;)V

    return-void
.end method
