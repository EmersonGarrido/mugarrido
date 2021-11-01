.class public Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;
.super Ljava/lang/Object;
.source "Picture.java"


# instance fields
.field private data:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;-><init>()V

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;->data:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;

    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;)V
    .locals 0
    .param p1, "data"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;->data:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;

    .line 12
    return-void
.end method


# virtual methods
.method public getData()Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/Picture;->data:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/facebook_bean/PictureData;

    return-object v0
.end method
