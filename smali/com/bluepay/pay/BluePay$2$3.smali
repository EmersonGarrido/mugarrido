.class Lcom/bluepay/pay/BluePay$2$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/pay/BluePay$2;

.field private final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/bluepay/pay/BluePay$2;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/BluePay$2$3;->a:Lcom/bluepay/pay/BluePay$2;

    iput-object p2, p0, Lcom/bluepay/pay/BluePay$2$3;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$3;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    return-void
.end method
