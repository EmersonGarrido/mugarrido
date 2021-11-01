.class final Lcom/kunlun/platform/android/google/GooglePlaySdk$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$3;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$3;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;->onFinished(ILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
