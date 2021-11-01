.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$4;
.super Ljava/lang/Object;
.source "KunlunFbFriendCircleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    const-class v2, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendRequestAcitvity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {v1, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->startActivity(Landroid/content/Intent;)V

    .line 298
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$4;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->finish()V

    .line 299
    return-void
.end method
