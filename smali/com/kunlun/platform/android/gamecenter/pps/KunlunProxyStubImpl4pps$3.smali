.class final Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;
.super Lcom/pps/sdk/platform/PPSPlatformListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iU:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->iU:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/pps/sdk/platform/PPSPlatformListener;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;)Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->iU:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

    return-object v0
.end method


# virtual methods
.method public final leavePlatform()V
    .locals 4

    invoke-super {p0}, Lcom/pps/sdk/platform/PPSPlatformListener;->leavePlatform()V

    const-string v0, "KunlunProxyStubImpl4pps"

    const-string v1, "\u79bb\u5f00PPS\u6e38\u620f\u8054\u8fd0\u5e73\u53f0"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x64

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final loginResult(ILcom/pps/sdk/platform/PPSUser;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/pps/sdk/platform/PPSPlatformListener;->loginResult(ILcom/pps/sdk/platform/PPSUser;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->iU:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;->a(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.pps.appid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/pps/sdk/platform/PPSUser;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "time\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/pps/sdk/platform/PPSUser;->timestamp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sign\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/pps/sdk/platform/PPSUser;->sign:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pps"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->val$activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, p0, v5, v6}, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;-><init>(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_1
    return-void
.end method
