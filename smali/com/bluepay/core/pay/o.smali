.class Lcom/bluepay/core/pay/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/l;

.field private final synthetic b:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/l;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/o;->a:Lcom/bluepay/core/pay/l;

    iput-object p2, p0, Lcom/bluepay/core/pay/o;->b:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/bluepay/core/pay/o;->a:Lcom/bluepay/core/pay/l;

    invoke-static {v0}, Lcom/bluepay/core/pay/l;->a(Lcom/bluepay/core/pay/l;)Lcom/bluepay/core/pay/i;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/core/pay/o;->b:Lcom/bluepay/data/Billing;

    invoke-static {}, Lcom/bluepay/core/pay/i;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bluepay/core/pay/i;->b(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;Ljava/lang/String;)V

    return-void
.end method
