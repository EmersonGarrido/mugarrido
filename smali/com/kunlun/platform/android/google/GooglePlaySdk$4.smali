.class final Lcom/kunlun/platform/android/google/GooglePlaySdk$4;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GooglePlaySdk;->b(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

.field private synthetic lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iget-object v3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;)Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v0, 0x6

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    const-string v2, ""

    invoke-interface {v1, v0, v2, v4}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_3
    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    const-string v2, ""

    invoke-interface {v1, v0, v2, v4}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/google/Purchase;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/google/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iget-object v7, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$4;->val$activity:Landroid/app/Activity;

    invoke-static {v6, v7, v0, v3}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Landroid/app/Activity;Lcom/kunlun/platform/android/google/Purchase;Z)I

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_3
.end method
