.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->incrementAchievements(Landroid/app/Activity;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;->val$id:Ljava/lang/String;

    iput p3, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;->val$act:Landroid/app/Activity;

    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;->val$id:Ljava/lang/String;

    iget v2, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;->val$index:I

    new-instance v3, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9$1;

    invoke-direct {v3, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9$1;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;)V

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/google/GoogleSdk;->incrementAchievements(Landroid/content/Context;Ljava/lang/String;ILcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    .line 505
    return-void
.end method
