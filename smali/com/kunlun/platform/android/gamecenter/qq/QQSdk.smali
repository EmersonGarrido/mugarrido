.class public Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/gamecenter/qq/QQSdk$RelationNotify;
    }
.end annotation


# static fields
.field public static LOGIN_TYPE:I

.field public static relationNotify:Lcom/kunlun/platform/android/gamecenter/qq/QQSdk$RelationNotify;

.field public static userAwardParam:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WGQueryMyInfo(Lcom/kunlun/platform/android/gamecenter/qq/QQSdk$RelationNotify;)V
    .locals 1

    sput-object p0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->relationNotify:Lcom/kunlun/platform/android/gamecenter/qq/QQSdk$RelationNotify;

    sget v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->LOGIN_TYPE:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGQueryQQMyInfo()Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGQueryWXMyInfo()Z

    goto :goto_0
.end method

.method public static getUserAward(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
    .locals 4

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v1, "taskid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v1, "cmd"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v1, "debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "qq/award.php"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v2, "POST"

    invoke-static {v0, v1, v2, p1}, Lcom/kunlun/platform/android/Kunlun;->asyncRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    goto :goto_0
.end method

.method public static getUserAwardParam()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    return-object v0
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "KunlunQQSdk"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onNewIntent"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/msdk/api/WGPlatform;->handleCallback(Landroid/content/Intent;)V

    return-void
.end method

.method public static sendUserAward(Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
    .locals 4

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v1, "taskid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v1, "cmd"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v1, "awardids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v1, "debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "qq/award.php"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->userAwardParam:Landroid/os/Bundle;

    const-string v2, "POST"

    invoke-static {v0, v1, v2, p2}, Lcom/kunlun/platform/android/Kunlun;->asyncRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    goto :goto_0
.end method
