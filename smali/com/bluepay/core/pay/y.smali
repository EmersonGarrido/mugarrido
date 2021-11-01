.class Lcom/bluepay/core/pay/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/w;

.field private final synthetic b:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/w;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/y;->a:Lcom/bluepay/core/pay/w;

    iput-object p2, p0, Lcom/bluepay/core/pay/y;->b:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/bluepay/core/pay/y;->a:Lcom/bluepay/core/pay/w;

    invoke-static {v0}, Lcom/bluepay/core/pay/w;->a(Lcom/bluepay/core/pay/w;)Lcom/bluepay/core/pay/u;

    move-result-object v0

    iget-object v0, v0, Lcom/bluepay/core/pay/u;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->A:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/core/pay/y;->b:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    return-void
.end method
