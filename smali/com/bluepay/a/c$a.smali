.class Lcom/bluepay/a/c$a;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bluepay/a/c;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/bluepay/a/c;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/a/c$a;->a:Lcom/bluepay/a/c;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/bluepay/a/c;JJLandroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/a/c$a;->a:Lcom/bluepay/a/c;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p6, p0, Lcom/bluepay/a/c$a;->b:Landroid/content/Context;

    iput-object p7, p0, Lcom/bluepay/a/c$a;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    const-string v0, "timer finish"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/bluepay/a/c$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/bluepay/a/c$a;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/bluepay/a/c$a;->a:Lcom/bluepay/a/c;

    invoke-static {v0}, Lcom/bluepay/a/c;->a(Lcom/bluepay/a/c;)Lcom/bluepay/data/Billing;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->b:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/a/c$a;->a:Lcom/bluepay/a/c;

    invoke-static {v4}, Lcom/bluepay/a/c;->a(Lcom/bluepay/a/c;)Lcom/bluepay/data/Billing;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
