.class Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8$1;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/platform/android/google/GoogleSdk$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;

    .prologue
    .line 446
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 3
    .param p1, "retCode"    # I
    .param p2, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 449
    const-string v0, "kunlun.googlesdk.unlockAchievements"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|retMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    if-nez p1, :cond_0

    .line 453
    const-string v0, "GAT"

    const-string v1, "200  succeed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    const-string v0, "GAT"

    const-string v1, "200  Fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
