.class final Lcom/kunlun/platform/android/KunlunUser$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunUser;->a(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic cN:Lcom/kunlun/platform/android/KunlunUser;

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunUser;Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUser$4;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunUser$4;->p:Landroid/content/Context;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunUser$4;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 1

    const/16 v0, -0xb

    if-eq p1, v0, :cond_0

    const/16 v0, -0xc

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$4;->cN:Lcom/kunlun/platform/android/KunlunUser;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUser;->e(Lcom/kunlun/platform/android/KunlunUser;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$4;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->logout(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$4;->val$kunlunExitCallback:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    :cond_1
    return-void
.end method
