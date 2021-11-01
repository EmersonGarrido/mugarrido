.class Lcom/bluepay/ui/PaymentActivity$DialogClick;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/ui/PaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogClick"
.end annotation


# instance fields
.field a:I

.field b:Lcom/bluepay/pay/BlueMessage;

.field final synthetic c:Lcom/bluepay/ui/PaymentActivity;


# direct methods
.method public constructor <init>(Lcom/bluepay/ui/PaymentActivity;ILcom/bluepay/pay/BlueMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$DialogClick;->c:Lcom/bluepay/ui/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/bluepay/ui/PaymentActivity$DialogClick;->a:I

    iput-object p3, p0, Lcom/bluepay/ui/PaymentActivity$DialogClick;->b:Lcom/bluepay/pay/BlueMessage;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    return-void
.end method
