.class Lcom/bluepay/core/pay/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/w;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/w;Landroid/app/Activity;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/x;->a:Lcom/bluepay/core/pay/w;

    iput-object p2, p0, Lcom/bluepay/core/pay/x;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bluepay/core/pay/x;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    iget-object v0, p0, Lcom/bluepay/core/pay/x;->b:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "rbtn_atm"

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/core/pay/x;->a:Lcom/bluepay/core/pay/w;

    invoke-static {v0}, Lcom/bluepay/core/pay/w;->a(Lcom/bluepay/core/pay/w;)Lcom/bluepay/core/pay/u;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/u;->b(Lcom/bluepay/core/pay/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bluepay/core/pay/x;->c:Landroid/widget/TextView;

    const/16 v1, 0x36

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/x;->a:Lcom/bluepay/core/pay/w;

    invoke-static {v0}, Lcom/bluepay/core/pay/w;->a(Lcom/bluepay/core/pay/w;)Lcom/bluepay/core/pay/u;

    move-result-object v0

    const-string v1, "atm"

    invoke-static {v0, v1}, Lcom/bluepay/core/pay/u;->a(Lcom/bluepay/core/pay/u;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bluepay/core/pay/x;->b:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "rbtn_otc"

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/core/pay/x;->a:Lcom/bluepay/core/pay/w;

    invoke-static {v0}, Lcom/bluepay/core/pay/w;->a(Lcom/bluepay/core/pay/w;)Lcom/bluepay/core/pay/u;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/u;->b(Lcom/bluepay/core/pay/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bluepay/core/pay/x;->a:Lcom/bluepay/core/pay/w;

    invoke-static {v0}, Lcom/bluepay/core/pay/w;->a(Lcom/bluepay/core/pay/w;)Lcom/bluepay/core/pay/u;

    move-result-object v0

    const-string v1, "otc"

    invoke-static {v0, v1}, Lcom/bluepay/core/pay/u;->a(Lcom/bluepay/core/pay/u;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/x;->c:Landroid/widget/TextView;

    const/16 v1, 0x37

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
