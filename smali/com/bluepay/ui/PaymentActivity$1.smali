.class Lcom/bluepay/ui/PaymentActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/ui/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bluepay/ui/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bluepay/ui/PaymentActivity$1;)Lcom/bluepay/ui/PaymentActivity;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->a(Lcom/bluepay/ui/PaymentActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->b(Lcom/bluepay/ui/PaymentActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->a(Lcom/bluepay/ui/PaymentActivity;)I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {v0, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Lcom/bluepay/ui/PaymentActivity;I)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    iget-object v0, v0, Lcom/bluepay/ui/PaymentActivity;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity;->c(Lcom/bluepay/ui/PaymentActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->a(Lcom/bluepay/ui/PaymentActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->b(Lcom/bluepay/ui/PaymentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lcom/bluepay/ui/PaymentActivity;->a(Lcom/bluepay/ui/PaymentActivity;I)V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$1;->a:Lcom/bluepay/ui/PaymentActivity;

    new-instance v1, Lcom/bluepay/ui/PaymentActivity$1$1;

    invoke-direct {v1, p0}, Lcom/bluepay/ui/PaymentActivity$1$1;-><init>(Lcom/bluepay/ui/PaymentActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/bluepay/ui/PaymentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
