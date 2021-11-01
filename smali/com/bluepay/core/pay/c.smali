.class Lcom/bluepay/core/pay/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/bluepay/data/g;


# direct methods
.method constructor <init>(Lcom/bluepay/data/g;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/c;->a:Lcom/bluepay/data/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bluepay/core/pay/c;->a:Lcom/bluepay/data/g;

    invoke-static {v0}, Lcom/bluepay/core/pay/BlueManager;->b(Lcom/bluepay/data/g;)V

    return-void
.end method
