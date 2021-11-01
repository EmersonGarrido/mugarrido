.class public final Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;
.super Ljava/lang/Object;
.source "FacebookCenterShowRequestBean.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final location:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->LEFT_CENTER:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    invoke-direct {p0, p1, v0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;-><init>(Landroid/app/Activity;Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "location"    # Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;->activity:Landroid/app/Activity;

    .line 17
    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;->location:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    .line 18
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getLocation()Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;->location:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    return-object v0
.end method
