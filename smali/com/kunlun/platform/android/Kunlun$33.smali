.class final Lcom/kunlun/platform/android/Kunlun$33;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->showUserCenter(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic y:Ljava/lang/String;

.field private final synthetic z:Lcom/kunlun/platform/android/Kunlun$DialogListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$33;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$33;->y:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/Kunlun$33;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$33;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$33;->y:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/kunlun/platform/android/KunLunLoginDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$33;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->showWeb(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
