.class public Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideHandleStrategy;
.super Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;
.source "FacebookCenterHideHandleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kunlun/sns/core/channel/PublisherHandleStrategy",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRequestBean;",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRespondBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/kunlun/sns/core/channel/PublisherHandleStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->hide()V

    .line 11
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRespondBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRespondBean;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideHandleStrategy;->onSdkSuccess(Ljava/lang/Object;)V

    .line 12
    return-void
.end method
