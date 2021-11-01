.class Lcom/bluepay/sdk/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/CharSequence;

.field private final synthetic c:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/n;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluepay/sdk/b/n;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/bluepay/sdk/b/n;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/sdk/b/n;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bluepay/sdk/b/n;->b:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/bluepay/sdk/b/n;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const-string v2, "OK"

    new-instance v3, Lcom/bluepay/sdk/b/o;

    invoke-direct {v3, p0}, Lcom/bluepay/sdk/b/o;-><init>(Lcom/bluepay/sdk/b/n;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
