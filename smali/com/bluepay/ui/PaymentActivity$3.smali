.class Lcom/bluepay/ui/PaymentActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/bluepay/ui/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bluepay/ui/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$3;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$3;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->i(Lcom/bluepay/ui/PaymentActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$3;->a:Lcom/bluepay/ui/PaymentActivity;

    const-string v2, "drawable"

    const-string v3, "refresh_down"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$3;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->i(Lcom/bluepay/ui/PaymentActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$3;->a:Lcom/bluepay/ui/PaymentActivity;

    const-string v2, "drawable"

    const-string v3, "refresh"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
