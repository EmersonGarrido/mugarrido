.class Lcom/bluepay/pay/BluePay$DialogClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/pay/BluePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClickListener"
.end annotation


# instance fields
.field a:Lcom/bluepay/data/g;

.field b:I

.field c:I

.field final synthetic d:Lcom/bluepay/pay/BluePay;


# direct methods
.method public constructor <init>(Lcom/bluepay/pay/BluePay;Lcom/bluepay/data/g;II)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/BluePay$DialogClickListener;->d:Lcom/bluepay/pay/BluePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bluepay/pay/BluePay$DialogClickListener;->a:Lcom/bluepay/data/g;

    iput p3, p0, Lcom/bluepay/pay/BluePay$DialogClickListener;->b:I

    iput p4, p0, Lcom/bluepay/pay/BluePay$DialogClickListener;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    iget v1, p0, Lcom/bluepay/pay/BluePay$DialogClickListener;->b:I

    iget-object v2, p0, Lcom/bluepay/pay/BluePay$DialogClickListener;->a:Lcom/bluepay/data/g;

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
