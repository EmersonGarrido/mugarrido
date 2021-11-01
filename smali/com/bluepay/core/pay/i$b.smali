.class Lcom/bluepay/core/pay/i$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/core/pay/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lcom/bluepay/data/Billing;

.field b:I

.field final synthetic c:Lcom/bluepay/core/pay/i;


# direct methods
.method public constructor <init>(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;)V
    .locals 1

    iput-object p1, p0, Lcom/bluepay/core/pay/i$b;->c:Lcom/bluepay/core/pay/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/16 v0, 0x258

    iput v0, p0, Lcom/bluepay/core/pay/i$b;->b:I

    iput-object p2, p0, Lcom/bluepay/core/pay/i$b;->a:Lcom/bluepay/data/Billing;

    return-void
.end method

.method static synthetic a(Lcom/bluepay/core/pay/i$b;)Lcom/bluepay/core/pay/i;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/core/pay/i$b;->c:Lcom/bluepay/core/pay/i;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bluepay/core/pay/i$b;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bluepay/core/pay/r;

    invoke-direct {v1, p0}, Lcom/bluepay/core/pay/r;-><init>(Lcom/bluepay/core/pay/i$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
