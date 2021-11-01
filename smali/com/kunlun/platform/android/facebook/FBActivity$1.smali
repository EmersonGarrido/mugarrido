.class final Lcom/kunlun/platform/android/facebook/FBActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/facebook/FBActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ek:Lcom/kunlun/platform/android/facebook/FBActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/facebook/FBActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/facebook/FBActivity$1;->ek:Lcom/kunlun/platform/android/facebook/FBActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity$1;->ek:Lcom/kunlun/platform/android/facebook/FBActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/facebook/FBActivity;->a(Lcom/kunlun/platform/android/facebook/FBActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity$1;->ek:Lcom/kunlun/platform/android/facebook/FBActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/facebook/FBActivity;->b(Lcom/kunlun/platform/android/facebook/FBActivity;)V

    return-void
.end method
