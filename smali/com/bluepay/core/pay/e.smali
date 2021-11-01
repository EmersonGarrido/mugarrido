.class Lcom/bluepay/core/pay/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/bluepay/data/g;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/bluepay/data/g;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/e;->a:Lcom/bluepay/data/g;

    iput-object p2, p0, Lcom/bluepay/core/pay/e;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->A:I

    const/4 v3, 0x0

    new-instance v4, Lcom/bluepay/data/Billing;

    iget-object v5, p0, Lcom/bluepay/core/pay/e;->a:Lcom/bluepay/data/g;

    invoke-direct {v4, v5}, Lcom/bluepay/data/Billing;-><init>(Lcom/bluepay/data/g;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/e;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
