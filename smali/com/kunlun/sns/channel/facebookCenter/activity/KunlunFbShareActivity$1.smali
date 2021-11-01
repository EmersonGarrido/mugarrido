.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$1;
.super Ljava/lang/Object;
.source "KunlunFbShareActivity.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->doShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 5
    .param p1, "retcode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 74
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->access$0(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FB\u5206\u4eab\u63a5\u53e3\u8c03\u7528\u5931\u8d25\uff0c\u539f\u56e0:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FB_SHARE_ERROR_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 81
    :cond_1
    if-nez p1, :cond_3

    .line 82
    move-object v0, p2

    .line 83
    .local v0, "postId":Ljava/lang/String;
    const-string v0, "123"

    .line 84
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FB_SHARE_ERROR_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 91
    .end local v0    # "postId":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 87
    .restart local v0    # "postId":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;

    invoke-static {v1, v0}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;->access$1(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbShareActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
