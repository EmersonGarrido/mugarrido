.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->unlockAchievements(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;->val$act:Landroid/app/Activity;

    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;->val$id:Ljava/lang/String;

    new-instance v2, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8$1;

    invoke-direct {v2, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8$1;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;)V

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/google/GoogleSdk;->unlockAchievements(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    .line 464
    return-void
.end method
