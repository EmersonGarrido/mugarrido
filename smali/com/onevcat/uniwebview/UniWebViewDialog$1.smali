.class Lcom/onevcat/uniwebview/UniWebViewDialog$1;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog;-><init>(Landroid/content/Context;Lcom/onevcat/uniwebview/UniWebViewDialog$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/onevcat/uniwebview/UniWebViewDialog;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 138
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-static {v3}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$000(Lcom/onevcat/uniwebview/UniWebViewDialog;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x80

    if-le v2, v3, :cond_1

    const/4 v1, 0x1

    .line 140
    .local v1, "visible":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 141
    iget-object v2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$1;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    .line 143
    :cond_0
    return-void

    .line 139
    .end local v1    # "visible":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
