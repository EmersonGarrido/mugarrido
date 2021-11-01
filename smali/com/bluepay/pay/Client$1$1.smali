.class Lcom/bluepay/pay/Client$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/pay/Client$1;

.field private final synthetic b:Lcom/bluepay/interfaceClass/BlueInitCallback;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bluepay/pay/Client$1;Lcom/bluepay/interfaceClass/BlueInitCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/Client$1$1;->a:Lcom/bluepay/pay/Client$1;

    iput-object p2, p0, Lcom/bluepay/pay/Client$1$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    iput-object p3, p0, Lcom/bluepay/pay/Client$1$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bluepay/pay/Client$1$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bluepay/pay/Client$1$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/pay/Client$1$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    iget-object v1, p0, Lcom/bluepay/pay/Client$1$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/bluepay/pay/Client$1$1;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/bluepay/interfaceClass/BlueInitCallback;->initComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
