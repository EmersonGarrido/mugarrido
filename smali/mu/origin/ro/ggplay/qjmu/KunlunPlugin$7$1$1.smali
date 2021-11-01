.class Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1$1;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;->onNodialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;)V
    .locals 0
    .param p1, "this$1"    # Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;

    .prologue
    .line 390
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1$1;->this$1:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1$1;->this$1:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;

    iget-object v0, v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;

    iget-object v0, v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 395
    return-void
.end method
