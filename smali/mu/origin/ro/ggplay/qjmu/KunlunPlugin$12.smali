.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$12;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->showLeaderboards(Landroid/app/Activity;Ljava/lang/String;)V
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
    .line 574
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$12;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$12;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$12;->val$act:Landroid/app/Activity;

    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$12;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->showLeaderboards(Landroid/content/Context;Ljava/lang/String;)V

    .line 580
    return-void
.end method
