.class final Lcom/onevcat/uniwebview/AndroidPlugin$28;
.super Ljava/lang/Object;
.source "AndroidPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/AndroidPlugin;->_UniWebViewSetImmersiveModeEnabled(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$28;->val$name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$28;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 616
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/AndroidPlugin$28;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 617
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 618
    iget-boolean v1, p0, Lcom/onevcat/uniwebview/AndroidPlugin$28;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->setImmersiveModeEnabled(Z)V

    .line 620
    :cond_0
    return-void
.end method
