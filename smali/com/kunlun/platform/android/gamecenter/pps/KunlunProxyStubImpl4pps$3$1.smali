.class final Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->loginResult(ILcom/pps/sdk/platform/PPSUser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iW:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;->iW:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;->iW:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;->a(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3;)Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;->a(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/pps/sdk/platform/PPSPlatform;->getInstance()Lcom/pps/sdk/platform/PPSPlatform;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$3$1;->val$activity:Landroid/app/Activity;

    const-string v2, "ppsmobile_s1"

    invoke-virtual {v0, v1, v2}, Lcom/pps/sdk/platform/PPSPlatform;->enterGame(Landroid/content/Context;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
