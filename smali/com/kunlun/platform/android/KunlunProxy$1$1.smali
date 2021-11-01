.class final Lcom/kunlun/platform/android/KunlunProxy$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$initCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bF:Lcom/kunlun/platform/android/KunlunProxy$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunProxy$1;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->bF:Lcom/kunlun/platform/android/KunlunProxy$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->bF:Lcom/kunlun/platform/android/KunlunProxy$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunProxy$1;->a(Lcom/kunlun/platform/android/KunlunProxy$1;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.autoUpdate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kunlun/platform/android/KunlunProxy$1$1$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunProxy$1$1$1;-><init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-static {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->checkUpdate(Landroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunSmsProxy;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0
.end method
