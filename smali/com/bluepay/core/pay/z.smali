.class Lcom/bluepay/core/pay/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/w;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/w;Landroid/widget/EditText;Landroid/app/Activity;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/z;->a:Lcom/bluepay/core/pay/w;

    iput-object p2, p0, Lcom/bluepay/core/pay/z;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/bluepay/core/pay/z;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bluepay/core/pay/z;->d:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/bluepay/core/pay/z;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/core/pay/z;->c:Landroid/app/Activity;

    const/16 v1, 0x38

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bluepay/core/pay/z;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/core/pay/z;->d:Lcom/bluepay/data/Billing;

    const-string v2, "62"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/bluepay/data/Billing;->setDesMsisdn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/z;->c:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/z;->a:Lcom/bluepay/core/pay/w;

    invoke-static {v0}, Lcom/bluepay/core/pay/w;->a(Lcom/bluepay/core/pay/w;)Lcom/bluepay/core/pay/u;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/core/pay/z;->d:Lcom/bluepay/data/Billing;

    invoke-static {v0, v1}, Lcom/bluepay/core/pay/u;->a(Lcom/bluepay/core/pay/u;Lcom/bluepay/data/Billing;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "62"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
