.class Lcom/bluepay/sdk/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/CharSequence;

.field private final synthetic c:Lcom/bluepay/interfaceClass/d;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/bluepay/interfaceClass/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/bluepay/sdk/b/r;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/bluepay/sdk/b/r;->c:Lcom/bluepay/interfaceClass/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x3

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    iget-object v0, p0, Lcom/bluepay/sdk/b/r;->a:Landroid/content/Context;

    const-string v1, "Tips"

    iget-object v2, p0, Lcom/bluepay/sdk/b/r;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/bluepay/sdk/b/r;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v2, -0x1

    const-string v3, "OK"

    new-instance v4, Lcom/bluepay/sdk/b/s;

    iget-object v5, p0, Lcom/bluepay/sdk/b/r;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/bluepay/sdk/b/r;->c:Lcom/bluepay/interfaceClass/d;

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/bluepay/sdk/b/s;-><init>(Lcom/bluepay/sdk/b/r;Landroid/widget/EditText;Landroid/content/Context;Lcom/bluepay/interfaceClass/d;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x2

    const-string v2, "Cancel"

    new-instance v3, Lcom/bluepay/sdk/b/t;

    iget-object v4, p0, Lcom/bluepay/sdk/b/r;->c:Lcom/bluepay/interfaceClass/d;

    invoke-direct {v3, p0, v4}, Lcom/bluepay/sdk/b/t;-><init>(Lcom/bluepay/sdk/b/r;Lcom/bluepay/interfaceClass/d;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
