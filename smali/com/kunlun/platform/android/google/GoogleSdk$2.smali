.class final Lcom/kunlun/platform/android/google/GoogleSdk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/google/GoogleSdk$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GoogleSdk;->connectGoogle(Landroid/content/Context;ZLcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic lF:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$2;->lF:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$2;->lF:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$2;->lF:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
