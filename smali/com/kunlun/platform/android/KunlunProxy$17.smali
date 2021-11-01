.class final Lcom/kunlun/platform/android/KunlunProxy$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bE:Lcom/kunlun/platform/android/KunlunProxy;

.field private final synthetic bO:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunProxy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->bO:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bl()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bl()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->bO:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunSmsProxy;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->bE:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->stub:Lcom/kunlun/platform/android/KunlunProxyStub;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunProxy$17;->bO:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunProxyStub;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    goto :goto_0
.end method
