.class Lcom/bluepay/pay/BluePay$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/pay/BluePay$2$1;

.field private final synthetic b:Landroid/widget/Button;

.field private final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bluepay/pay/BluePay$2$1;Landroid/widget/Button;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/BluePay$2$1$1;->a:Lcom/bluepay/pay/BluePay$2$1;

    iput-object p2, p0, Lcom/bluepay/pay/BluePay$2$1$1;->b:Landroid/widget/Button;

    iput-object p3, p0, Lcom/bluepay/pay/BluePay$2$1$1;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$1$1;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$2$1$1;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x23

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
