.class final Lcom/kunlun/platform/android/KunlunProxy$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunProxy$1$1;->onComplete(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunSmsProxy;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    :goto_0
    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunProxy$1$1$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0
.end method
