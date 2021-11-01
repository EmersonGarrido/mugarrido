.class Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$ExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;

    .prologue
    .line 374
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;

    iget-object v0, v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;->val$act:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 380
    return-void
.end method

.method public onNodialog()V
    .locals 3

    .prologue
    .line 386
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;

    iget-object v1, v1, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;->val$act:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Quieres realmente salir del Juego?"

    .line 387
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancelar"

    const/4 v2, 0x0

    .line 388
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Confirmar"

    new-instance v2, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1$1;

    invoke-direct {v2, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1$1;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7$1;)V

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 397
    return-void
.end method
