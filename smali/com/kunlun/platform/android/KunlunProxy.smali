.class public Lcom/kunlun/platform/android/KunlunProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bD:Lcom/kunlun/platform/android/KunlunProxy;


# instance fields
.field bB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private bC:Ljava/lang/Long;

.field public logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

.field public purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field public roleInfo:Landroid/os/Bundle;

.field public stub:Lcom/kunlun/platform/android/KunlunProxyStub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunProxy;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunProxy;->bD:Lcom/kunlun/platform/android/KunlunProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bC:Ljava/lang/Long;

    return-void
.end method

.method private bk()V
    .locals 5

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "kunlun"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.kunlun.platform.android.gamecenter."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".KunlunProxyStubImpl4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/KunlunProxyStub;

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.sns_channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.kunlun.sns.channel."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".KunlunProxyStubImpl4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/KunlunProxyStub;

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_2

    new-instance v0, Lcom/kunlun/platform/android/KunlunProxyStubImpl;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KunlunProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kunlun.channel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v0, "KunlunProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Kunlun.sns_channel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cn.kalends.channel."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".KunlunProxyStubImpl4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/KunlunProxyStub;

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "KunlunProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Kunlun.sns_channel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunProxy;->bD:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bB:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kunlun/platform/android/Kunlun;->m:Z

    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunProxy$10;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunProxy$17;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bB:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/kunlun/platform/android/Kunlun;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunProxy;->bk()V

    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunProxy$1;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunProxy;->setKunlunServerId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bB:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunProxy$9;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;IILandroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 1

    invoke-static {p1}, Lcom/kunlun/platform/android/Kunlun;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunProxy;->bk()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    invoke-interface {v0, p1}, Lcom/kunlun/platform/android/KunlunProxyStub;->onCreate(Landroid/app/Application;)V

    :cond_0
    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunSmsProxy;->a(Landroid/app/Application;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$8;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/KunlunProxy$8;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunProxy$2;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$6;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/KunlunProxy$6;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$7;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/KunlunProxy$7;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bB:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$5;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/KunlunProxy$5;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$3;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/KunlunProxy$3;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$4;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/KunlunProxy$4;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.notNeedLogin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bl()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.autoLogin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$12;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kunlun/platform/android/KunlunProxy$12;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/kunlun/platform/android/KunlunProxy;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bB:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "price\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kunlun/platform/android/KunlunProxy$13;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "KunlunProxy"

    const-string v1, "relogin error loginListener is null"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunProxy$11;-><init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setKunlunServerId(Ljava/lang/String;)V
    .locals 5

    const-string v0, "KunlunProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setKunlunServerId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kunlun/platform/android/Kunlun;->initServer(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setKunlunServerId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setLogoutListener(Lcom/kunlun/platform/android/Kunlun$LogoutListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    return-void
.end method

.method public setPurchaseSuccessListener(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 1

    invoke-static {p1}, Lcom/kunlun/platform/android/Kunlun;->setPurchaseSuccessListener(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$14;

    invoke-direct {v0, p1}, Lcom/kunlun/platform/android/KunlunProxy$14;-><init>(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    return-void
.end method

.method public setRoleInfo(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "KunlunProxy"

    const-string v1, "setRoleInfo"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    return-void
.end method

.method public showWeb(Landroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 1

    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$16;

    invoke-direct {v0, p1, p2, p3}, Lcom/kunlun/platform/android/KunlunProxy$16;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public smsPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 9

    const/4 v8, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy;->bC:Ljava/lang/Long;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bC:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bC:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    const-string v2, "\u8fde\u7eed\u70b9\u51fb\u9519\u8bef"

    invoke-interface {p5, v0, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->bC:Ljava/lang/Long;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-class v0, Lcom/kunlun/platform/android/KunlunSmsProxy;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    check-cast v0, Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_3

    const-string v0, "\u7f51\u7edc\u6216\u7cfb\u7edf\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\u77ed\u4ee3\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u4ee3\u7801"

    invoke-interface {p5, v8, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bl()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v0, ""

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "faild"

    invoke-interface {p5, v8, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/kunlun/platform/android/KunlunProxy$15;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/KunlunProxy$15;-><init>(Lcom/kunlun/platform/android/KunlunSmsProxy;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUser;->bF()Lcom/kunlun/platform/android/KunlunUser;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/kunlun/platform/android/KunlunUser;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "submitRoleInfo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KunlunProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submitRoleInfo error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
