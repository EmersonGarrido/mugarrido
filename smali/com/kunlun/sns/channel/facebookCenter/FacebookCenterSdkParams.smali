.class public final Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;
.super Lcom/kunlun/sns/core/channel/SdkParams;
.source "FacebookCenterSdkParams.java"


# instance fields
.field private facebookId:Ljava/lang/String;

.field private isShowOnlyFB:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "configParams"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/kunlun/sns/core/channel/SdkParams;-><init>(Landroid/os/Bundle;)V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->facebookId:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->isShowOnlyFB:Z

    .line 14
    sget-object v0, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebookCenter:Lcom/kunlun/sns/core/channel/ChannelEnum;

    iput-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->snsChannelEnum:Lcom/kunlun/sns/core/channel/ChannelEnum;

    .line 15
    const-string v0, "v4.0"

    iput-object v0, p0, Lcom/kunlun/sns/core/channel/SdkParams;->version:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getFacebookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->facebookId:Ljava/lang/String;

    return-object v0
.end method

.method public isShowOnlyFB()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->isShowOnlyFB:Z

    return v0
.end method

.method public setFacebookId(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookId"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->facebookId:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setShowOnlyFB(Z)V
    .locals 0
    .param p1, "isShowOnlyFB"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterSdkParams;->isShowOnlyFB:Z

    .line 32
    return-void
.end method
