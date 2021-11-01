.class Lcom/bluepay/core/pay/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/l;

.field private final synthetic b:Lcom/bluepay/data/Billing;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/l;Lcom/bluepay/data/Billing;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/m;->a:Lcom/bluepay/core/pay/l;

    iput-object p2, p0, Lcom/bluepay/core/pay/m;->b:Lcom/bluepay/data/Billing;

    iput-object p3, p0, Lcom/bluepay/core/pay/m;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/bluepay/core/pay/m;->a:Lcom/bluepay/core/pay/l;

    invoke-static {v0}, Lcom/bluepay/core/pay/l;->a(Lcom/bluepay/core/pay/l;)Lcom/bluepay/core/pay/i;

    move-result-object v0

    iget-object v0, v0, Lcom/bluepay/core/pay/i;->c:Landroid/os/Handler;

    new-instance v1, Lcom/bluepay/core/pay/i$c;

    iget-object v2, p0, Lcom/bluepay/core/pay/m;->a:Lcom/bluepay/core/pay/l;

    invoke-static {v2}, Lcom/bluepay/core/pay/l;->a(Lcom/bluepay/core/pay/l;)Lcom/bluepay/core/pay/i;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/core/pay/m;->b:Lcom/bluepay/data/Billing;

    invoke-direct {v1, v2, v3}, Lcom/bluepay/core/pay/i$c;-><init>(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bluepay/core/pay/m;->a:Lcom/bluepay/core/pay/l;

    invoke-static {v0}, Lcom/bluepay/core/pay/l;->a(Lcom/bluepay/core/pay/l;)Lcom/bluepay/core/pay/i;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/core/pay/m;->b:Lcom/bluepay/data/Billing;

    iget-object v2, p0, Lcom/bluepay/core/pay/m;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;Ljava/lang/String;)V

    return-void
.end method
