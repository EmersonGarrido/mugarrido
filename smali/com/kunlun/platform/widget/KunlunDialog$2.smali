.class final Lcom/kunlun/platform/widget/KunlunDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/widget/KunlunDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic nd:Lcom/kunlun/platform/widget/KunlunDialog;

.field private final synthetic ne:I

.field private final synthetic nf:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/widget/KunlunDialog;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/widget/KunlunDialog$2;->nd:Lcom/kunlun/platform/widget/KunlunDialog;

    iput p2, p0, Lcom/kunlun/platform/widget/KunlunDialog$2;->ne:I

    iput-object p3, p0, Lcom/kunlun/platform/widget/KunlunDialog$2;->nf:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/kunlun/platform/widget/KunlunDialog$2;->ne:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/kunlun/platform/widget/KunlunDialog$2;->nf:Landroid/content/DialogInterface$OnClickListener;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kunlun/platform/widget/KunlunDialog$2;->nd:Lcom/kunlun/platform/widget/KunlunDialog;

    invoke-static {v1}, Lcom/kunlun/platform/widget/KunlunDialog;->b(Lcom/kunlun/platform/widget/KunlunDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/kunlun/platform/widget/KunlunDialog$2;->nd:Lcom/kunlun/platform/widget/KunlunDialog;

    iget-object v0, v0, Lcom/kunlun/platform/widget/KunlunDialog;->dialog:Lcom/kunlun/platform/widget/KunlunDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunDialog;->dismiss()V

    return-void
.end method
