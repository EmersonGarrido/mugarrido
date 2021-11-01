.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$1;
.super Ljava/lang/Object;
.source "KunlunFbMessageCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbMessageCenterActivity;->finish()V

    .line 250
    return-void
.end method
