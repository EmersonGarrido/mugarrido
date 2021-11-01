.class final Lcom/kunlun/platform/android/google/GoogleSdk$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/google/GoogleSdk$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GoogleSdk;->showLeaderboards(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic lI:Landroid/content/Intent;

.field private final synthetic lJ:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$10;->lI:Landroid/content/Intent;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GoogleSdk$10;->lJ:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/google/GoogleSdk$10;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$10;->lI:Landroid/content/Intent;

    const-string v1, "action"

    const-string v2, "showLeaderboards"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$10;->lI:Landroid/content/Intent;

    const-string v1, "leaderboardId"

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GoogleSdk$10;->lJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleSdk$10;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleSdk$10;->lI:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
