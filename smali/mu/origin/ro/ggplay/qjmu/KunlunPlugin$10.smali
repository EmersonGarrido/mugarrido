.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$10;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->showAchievements(Landroid/app/Activity;)V
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
    .line 515
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$10;->val$act:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$10;->val$act:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kunlun/platform/android/google/GoogleSdk;->showAchievements(Landroid/content/Context;)V

    .line 522
    return-void
.end method
