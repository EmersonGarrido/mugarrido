.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->quit(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 373
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;->val$act:Landroid/app/Activity;

    new-instance v2, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;

    invoke-direct {v2, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunProxy;->exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    .line 401
    return-void
.end method
