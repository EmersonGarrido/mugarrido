.class final Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/gamebox/buoy/sdk/inter/UserInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;)Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    return-object v0
.end method


# virtual methods
.method public final dealUserInfo(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4huawei"

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/gamebox/buoy/sdk/util/DebugConfig;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "KunlunProxyStubImpl4huawei"

    const-string v0, "loginStatus"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x65

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "0"

    const-string v0, "loginStatus"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x66

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_2
    const-string v1, "1"

    const-string v0, "loginStatus"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->b(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;->getIntance()Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/gamebox/buoy/sdk/impl/BuoyOpenSDK;->showSmallWindow(Landroid/content/Context;)V

    :cond_3
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    const-string v0, "accesstoken"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->a(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "appid\":\""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "uid\":\""

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "userID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->c(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$1;Landroid/app/Activity;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0
.end method
