.class final Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;
.super Lcom/snailgame/mobilesdk/OnLoginProcessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jy:Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->jy:Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Lcom/snailgame/mobilesdk/OnLoginProcessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishLoginProcess(I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x4

    if-nez p1, :cond_0

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "login success"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->jy:Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->a(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.snail.appId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getLoginUin()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getSessionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->jy:Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;

    invoke-static {v4}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->a(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Kunlun.snail.appKey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s%s%s%s%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v2, v6, v7

    const/4 v7, 0x3

    aput-object v3, v6, v7

    aput-object v4, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appId\":\""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "act\":\"4"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "uin\":\""

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sessionId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "paramsstr"

    invoke-static {v1, v4}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "checkSign"

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "snail"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5, v6}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2$1;-><init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x66

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x67

    const-string v2, "\u767b\u9646\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
