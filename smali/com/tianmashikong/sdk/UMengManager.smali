.class public Lcom/tianmashikong/sdk/UMengManager;
.super Ljava/lang/Object;
.source "UMengManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SendMessage(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 16
    new-instance v0, Lcom/tianmashikong/sdk/UMengManager$1;

    invoke-direct {v0}, Lcom/tianmashikong/sdk/UMengManager$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method

.method public static SendMessage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/tianmashikong/sdk/UMengManager$2;

    invoke-direct {v0, p0, p1}, Lcom/tianmashikong/sdk/UMengManager$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
