.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->showFaceBook(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 635
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;

    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;->val$act:Landroid/app/Activity;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->LEFT_CENTER:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;-><init>(Landroid/app/Activity;Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V

    .line 636
    .local v0, "requestBean":Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowRequestBean;
    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    new-instance v2, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14$1;

    invoke-direct {v2, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14$1;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/core/KunlunSNS;->requestCommand(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 649
    return-void
.end method
