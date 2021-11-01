.class Lcom/bluepay/core/pay/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/ac;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/ac;Ljava/lang/String;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/ad;->a:Lcom/bluepay/core/pay/ac;

    iput-object p2, p0, Lcom/bluepay/core/pay/ad;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bluepay/core/pay/ad;->c:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bluepay/core/pay/ad;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bluepay/core/pay/ad;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/bluepay/core/pay/ad;->a:Lcom/bluepay/core/pay/ac;

    iget-object v0, v0, Lcom/bluepay/core/pay/ac;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->b:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/core/pay/ad;->c:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    return-void
.end method
