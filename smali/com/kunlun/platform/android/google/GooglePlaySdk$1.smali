.class final Lcom/kunlun/platform/android/google/GooglePlaySdk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/google/GooglePlaySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ls:I

.field private final synthetic lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

.field private final synthetic lu:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->lu:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    const/16 v1, -0x3e8

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    rsub-int v0, v0, -0x3e8

    if-ltz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->bW()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->bW()[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    iget v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    iget-object v3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->lu:Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    invoke-static {}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->bX()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->bX()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$1;->ls:I

    aget-object v0, v0, v1

    goto :goto_0
.end method
