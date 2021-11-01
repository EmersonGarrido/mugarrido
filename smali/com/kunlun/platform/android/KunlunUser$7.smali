.class final Lcom/kunlun/platform/android/KunlunUser$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cU:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUser$7;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunUser$7;->cU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$7;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunUser$7;->cU:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kunlun/platform/android/KunLunLoginDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->showWeb(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
