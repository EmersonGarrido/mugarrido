.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;
.super Ljava/lang/Object;
.source "FriendsBeInvitedCollection.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;",
            ">;"
        }
    .end annotation
.end field

.field private paging:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;)V
    .locals 0
    .param p2, "paging"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;",
            ">;",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;->data:Ljava/util/List;

    .line 11
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;->paging:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;

    .line 12
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
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendBeInvitedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;->data:Ljava/util/List;

    return-object v0
.end method

.method public getPaging()Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/FriendsBeInvitedCollection;->paging:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Paging;

    return-object v0
.end method
