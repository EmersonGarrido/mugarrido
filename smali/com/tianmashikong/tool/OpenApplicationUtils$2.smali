.class Lcom/tianmashikong/tool/OpenApplicationUtils$2;
.super Ljava/lang/Object;
.source "OpenApplicationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/OpenApplicationUtils;->copyToClipboard(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$2;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$2;->val$text:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$2;->val$act:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 72
    .local v0, "cmb":Landroid/content/ClipboardManager;
    iget-object v1, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$2;->val$text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method
