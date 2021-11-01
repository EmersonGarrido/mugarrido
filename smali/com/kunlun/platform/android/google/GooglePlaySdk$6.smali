.class final Lcom/kunlun/platform/android/google/GooglePlaySdk$6;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GooglePlaySdk;->consumePurchase(Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

.field private synthetic lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

.field private final synthetic lw:Lcom/kunlun/platform/android/google/Purchase;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lw:Lcom/kunlun/platform/android/google/Purchase;

    iput-object p4, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lw:Lcom/kunlun/platform/android/google/Purchase;

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lw:Lcom/kunlun/platform/android/google/Purchase;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/google/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2, v3, v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Z)I

    move-result v0

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$6;->lw:Lcom/kunlun/platform/android/google/Purchase;

    invoke-static {v1, v0, v2}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
