.class Lmu/origin/ro/ggplay/qjmu/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/MainActivity;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/MainActivity;

    .prologue
    .line 100
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/MainActivity$2;->this$0:Lmu/origin/ro/ggplay/qjmu/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "package"

    iget-object v2, p0, Lmu/origin/ro/ggplay/qjmu/MainActivity$2;->this$0:Lmu/origin/ro/ggplay/qjmu/MainActivity;

    invoke-virtual {v2}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/MainActivity$2;->this$0:Lmu/origin/ro/ggplay/qjmu/MainActivity;

    invoke-virtual {v1, v0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method
