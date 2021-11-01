.class Lcom/bluepay/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/a/c;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bluepay/a/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/a/d;->a:Lcom/bluepay/a/c;

    iput-object p2, p0, Lcom/bluepay/a/d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v8, p0, Lcom/bluepay/a/d;->a:Lcom/bluepay/a/c;

    new-instance v0, Lcom/bluepay/a/c$a;

    iget-object v1, p0, Lcom/bluepay/a/d;->a:Lcom/bluepay/a/c;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x64

    iget-object v6, p0, Lcom/bluepay/a/d;->b:Landroid/content/Context;

    iget-object v7, p0, Lcom/bluepay/a/d;->a:Lcom/bluepay/a/c;

    invoke-direct/range {v0 .. v7}, Lcom/bluepay/a/c$a;-><init>(Lcom/bluepay/a/c;JJLandroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iput-object v0, v8, Lcom/bluepay/a/c;->a:Lcom/bluepay/a/c$a;

    iget-object v0, p0, Lcom/bluepay/a/d;->a:Lcom/bluepay/a/c;

    iget-object v0, v0, Lcom/bluepay/a/c;->a:Lcom/bluepay/a/c$a;

    invoke-virtual {v0}, Lcom/bluepay/a/c$a;->start()Landroid/os/CountDownTimer;

    return-void
.end method
