.class Lcom/bluepay/sdk/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/CharSequence;

.field private final synthetic c:Ljava/lang/CharSequence;

.field private final synthetic d:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic e:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/p;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluepay/sdk/b/p;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/bluepay/sdk/b/p;->c:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/bluepay/sdk/b/p;->d:Landroid/content/DialogInterface$OnClickListener;

    iput p5, p0, Lcom/bluepay/sdk/b/p;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bluepay/sdk/b/p;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bluepay/sdk/b/p;->b:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/bluepay/sdk/b/p;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const-string v2, "OK"

    iget-object v3, p0, Lcom/bluepay/sdk/b/p;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget v0, p0, Lcom/bluepay/sdk/b/p;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const-string v2, "Cancel"

    iget-object v3, p0, Lcom/bluepay/sdk/b/p;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
