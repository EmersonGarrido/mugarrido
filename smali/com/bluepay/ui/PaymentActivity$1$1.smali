.class Lcom/bluepay/ui/PaymentActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/ui/PaymentActivity$1;


# direct methods
.method constructor <init>(Lcom/bluepay/ui/PaymentActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$1$1;->a:Lcom/bluepay/ui/PaymentActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1$1;->a:Lcom/bluepay/ui/PaymentActivity$1;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity$1;->a(Lcom/bluepay/ui/PaymentActivity$1;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/bluepay/ui/PaymentActivity;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1$1;->a:Lcom/bluepay/ui/PaymentActivity$1;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity$1;->a(Lcom/bluepay/ui/PaymentActivity$1;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/bluepay/ui/PaymentActivity;->b:Landroid/widget/TextView;

    const-string v1, "Server time out"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
