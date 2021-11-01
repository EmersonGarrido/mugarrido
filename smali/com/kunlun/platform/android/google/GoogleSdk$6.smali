.class final Lcom/kunlun/platform/android/google/GoogleSdk$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/google/GoogleSdk$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GoogleSdk;->unlockAchievements(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic lF:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

.field private final synthetic lG:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$6;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GoogleSdk$6;->lG:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/google/GoogleSdk$6;->lF:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$6;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$6;->lG:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GoogleSdk$6;->lF:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$6;->lF:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
