.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;
.super Ljava/lang/Object;
.source "FeedLogNetRequestBean.java"


# instance fields
.field private postId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "postId"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;->postId:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getPostId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/feed_log/FeedLogNetRequestBean;->postId:Ljava/lang/String;

    return-object v0
.end method
