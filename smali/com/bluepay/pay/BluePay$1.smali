.class Lcom/bluepay/pay/BluePay$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/pay/BluePay;

.field private final synthetic b:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/pay/BluePay;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/BluePay$1;->a:Lcom/bluepay/pay/BluePay;

    iput-object p2, p0, Lcom/bluepay/pay/BluePay$1;->b:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->A:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/pay/BluePay$1;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    return-void
.end method
