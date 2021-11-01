.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
.super Ljava/lang/Object;
.source "Paging.java"


# instance fields
.field private cursors:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

.field private next:Ljava/lang/String;

.field private previous:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->next:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->previous:Ljava/lang/String;

    .line 11
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->cursors:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;)V
    .locals 0
    .param p1, "next"    # Ljava/lang/String;
    .param p2, "previous"    # Ljava/lang/String;
    .param p3, "cursors"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->next:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->previous:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->cursors:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

    .line 18
    return-void
.end method


# virtual methods
.method public getCursors()Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->cursors:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Cursors;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->next:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevious()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;->previous:Ljava/lang/String;

    return-object v0
.end method
