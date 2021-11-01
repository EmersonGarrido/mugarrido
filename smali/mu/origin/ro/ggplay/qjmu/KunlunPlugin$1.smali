.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->Init(Landroid/app/Activity;)V
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
    .line 58
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;->val$act:Landroid/app/Activity;

    new-instance v2, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1$1;

    invoke-direct {v2, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1$1;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunProxy;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    .line 97
    return-void
.end method
