.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity$1;
.super Ljava/lang/Object;
.source "KunlunFbOpterationActivity.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbOpterationActivity;->finish()V

    .line 62
    return-void
.end method
