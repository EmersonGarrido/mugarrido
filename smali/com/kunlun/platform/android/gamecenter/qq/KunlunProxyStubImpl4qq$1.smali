.class final Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/msdk/api/WGPlatformObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnAddWXCardNotify(Lcom/tencent/msdk/api/CardRet;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    invoke-virtual {p1}, Lcom/tencent/msdk/api/CardRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/tencent/msdk/api/CardRet;->flag:I

    return-void
.end method

.method public final OnCrashExtMessageNotify()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "OnCrashExtMessageNotify called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new Upload extra crashing message for bugly on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final OnFeedbackNotify(ILjava/lang/String;)V
    .locals 5

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "flag: %d; desc: %s;"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KunlunProxyStubImpl4qq"

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OnLocationGotNotify(Lcom/tencent/msdk/api/LocationRet;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/tencent/msdk/api/LocationRet;->flag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nplatform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/tencent/msdk/api/LocationRet;->platform:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlongitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/tencent/msdk/api/LocationRet;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlatitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/tencent/msdk/api/LocationRet;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KunlunProxyStubImpl4qq"

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OnLocationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    invoke-virtual {p1}, Lcom/tencent/msdk/remote/api/RelationRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OnLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnLoginNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v0}, Lcom/tencent/msdk/consts/EPlatform;->getEnum(I)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;Lcom/tencent/msdk/api/LoginRet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-static {v0}, Lcom/tencent/msdk/consts/EPlatform;->getEnum(I)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->a(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;Lcom/tencent/msdk/api/LoginRet;)V

    goto :goto_0
.end method

.method public final OnRelationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRelationNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/msdk/remote/api/RelationRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->relationNotify:Lcom/kunlun/platform/android/gamecenter/qq/QQSdk$RelationNotify;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk;->relationNotify:Lcom/kunlun/platform/android/gamecenter/qq/QQSdk$RelationNotify;

    invoke-interface {v0, p1}, Lcom/kunlun/platform/android/gamecenter/qq/QQSdk$RelationNotify;->OnRelationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V

    :cond_0
    return-void
.end method

.method public final OnShareNotify(Lcom/tencent/msdk/api/ShareRet;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4qq"

    invoke-virtual {p1}, Lcom/tencent/msdk/api/ShareRet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final OnWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qq"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnWakeupNotify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget v0, p1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    if-eqz v0, :cond_0

    const/16 v0, 0xbbc

    iget v1, p1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->c(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;Lcom/tencent/msdk/api/LoginRet;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0xbba

    iget v1, p1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    const/16 v1, 0xbbb

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u7968\u636e\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    const/16 v1, 0xbb9

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u7968\u636e\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGLogout()Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq$1;->jp:Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;->b(Lcom/kunlun/platform/android/gamecenter/qq/KunlunProxyStubImpl4qq;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u7968\u636e\u65e0\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0
.end method
