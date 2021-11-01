.class public Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils;
.super Ljava/lang/Object;
.source "FbSdkUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils$FbGraphApiListerner;,
        Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils$SendRequestListerner;
    }
.end annotation


# static fields
.field public static final NO_ANY_MORE_FRIENDS:Ljava/lang/String; = "No any more friends!"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInvitableFriends(Landroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "after"    # Ljava/lang/String;
    .param p2, "requestListener"    # Lcom/kunlun/platform/android/Kunlun$RequestListener;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "\u5165\u53c2\u4e0d\u5408\u6cd5\uff1aFbSdkUtils.getInvitableFriends\u7684after\u4e0d\u53ef\u4e3anull\uff01"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_0
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 62
    .local v1, "session":Lcom/facebook/AccessToken;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v2

    if-nez v2, :cond_2

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "limit"

    const-string v3, "30"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "No any more friends!"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    const-string v2, "after"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->getInvitableFriends(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    .line 71
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public static sendRequestDialog(Landroid/content/Context;Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "requestBean"    # Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;
    .param p2, "listener"    # Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    .prologue
    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "request_title"

    iget-object v2, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "request_message"

    iget-object v2, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "request_to"

    iget-object v2, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->toFbId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-boolean v1, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->isInvite:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->objectId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const-string v1, "object_id"

    iget-object v2, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "request_action_type"

    iget-object v2, p1, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean;->actionType:Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;

    invoke-virtual {v2}, Lcom/kunlun/sns/channel/facebookCenter/tools/FbRequestBean$SETPROPSLOG_ACTION;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "mContext":Landroid/content/Context;
    invoke-virtual {v1, v0, p0, p2}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->invite(Landroid/os/Bundle;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V

    .line 52
    return-void
.end method
