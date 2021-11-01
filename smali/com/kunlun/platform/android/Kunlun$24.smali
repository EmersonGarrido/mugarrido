.class final Lcom/kunlun/platform/android/Kunlun$24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->appLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$24;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$24;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$24;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$24;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$24;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/Kunlun;->a(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;-><init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
