.class Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;
.super Ljava/lang/Object;
.source "KunlunFbFriendCircleActivity.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$FbInviteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->sendRequestDialog(Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

.field private final synthetic val$action:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

.field private final synthetic val$actionButton:Landroid/widget/Button;

.field private final synthetic val$fbId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->val$fbId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->val$action:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->val$actionButton:Landroid/widget/Button;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FB_REQUEST_ERROR_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 207
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 193
    const-string v1, "requstId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "requestId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->FB_REQUEST_ERROR_MSG:Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    invoke-static {v2}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->this$0:Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;

    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->val$fbId:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->val$action:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity$1;->val$actionButton:Landroid/widget/Button;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;->access$4(Lcom/kunlun/sns/channel/facebookCenter/activity/KunlunFbFriendCircleActivity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;Landroid/widget/Button;)V

    goto :goto_0
.end method
