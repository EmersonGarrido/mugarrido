.class Lcom/bluepay/sdk/b/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/sdk/b/r;

.field private final synthetic b:Lcom/bluepay/interfaceClass/d;


# direct methods
.method constructor <init>(Lcom/bluepay/sdk/b/r;Lcom/bluepay/interfaceClass/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/t;->a:Lcom/bluepay/sdk/b/r;

    iput-object p2, p0, Lcom/bluepay/sdk/b/t;->b:Lcom/bluepay/interfaceClass/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/bluepay/sdk/b/t;->b:Lcom/bluepay/interfaceClass/d;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bluepay/interfaceClass/d;->onComplete(ILjava/lang/String;)V

    return-void
.end method
