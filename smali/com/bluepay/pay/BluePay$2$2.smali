.class Lcom/bluepay/pay/BluePay$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/pay/BluePay$2;

.field private final synthetic b:Landroid/widget/Button;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Landroid/app/Activity;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:I

.field private final synthetic i:Ljava/lang/String;

.field private final synthetic j:Ljava/lang/String;

.field private final synthetic k:Z

.field private final synthetic l:Lcom/bluepay/pay/IPayCallback;

.field private final synthetic m:Landroid/app/AlertDialog;

.field private final synthetic n:I


# direct methods
.method constructor <init>(Lcom/bluepay/pay/BluePay$2;Landroid/widget/Button;Ljava/util/Map;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;Landroid/app/AlertDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/BluePay$2$2;->a:Lcom/bluepay/pay/BluePay$2;

    iput-object p2, p0, Lcom/bluepay/pay/BluePay$2$2;->b:Landroid/widget/Button;

    iput-object p3, p0, Lcom/bluepay/pay/BluePay$2$2;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/bluepay/pay/BluePay$2$2;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/bluepay/pay/BluePay$2$2;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/bluepay/pay/BluePay$2$2;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/bluepay/pay/BluePay$2$2;->g:Ljava/lang/String;

    iput p8, p0, Lcom/bluepay/pay/BluePay$2$2;->h:I

    iput-object p9, p0, Lcom/bluepay/pay/BluePay$2$2;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/bluepay/pay/BluePay$2$2;->j:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/bluepay/pay/BluePay$2$2;->k:Z

    iput-object p12, p0, Lcom/bluepay/pay/BluePay$2$2;->l:Lcom/bluepay/pay/IPayCallback;

    iput-object p13, p0, Lcom/bluepay/pay/BluePay$2$2;->m:Landroid/app/AlertDialog;

    iput p14, p0, Lcom/bluepay/pay/BluePay$2$2;->n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$2;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$2$2;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$2$2;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$2;->a:Lcom/bluepay/pay/BluePay$2;

    invoke-static {v0}, Lcom/bluepay/pay/BluePay$2;->a(Lcom/bluepay/pay/BluePay$2;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$2$2;->d:Landroid/app/Activity;

    const-string v2, "000000"

    iget-object v3, p0, Lcom/bluepay/pay/BluePay$2$2;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/bluepay/pay/BluePay$2$2;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/bluepay/pay/BluePay$2$2;->g:Ljava/lang/String;

    const-string v6, ""

    const-string v7, ""

    invoke-static {v8, v9}, Lcom/bluepay/sdk/b/h;->a(Ljava/lang/String;I)I

    move-result v8

    iget v9, p0, Lcom/bluepay/pay/BluePay$2$2;->h:I

    iget-object v10, p0, Lcom/bluepay/pay/BluePay$2$2;->i:Ljava/lang/String;

    iget-object v11, p0, Lcom/bluepay/pay/BluePay$2$2;->j:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/bluepay/pay/BluePay$2$2;->k:Z

    iget-object v13, p0, Lcom/bluepay/pay/BluePay$2$2;->l:Lcom/bluepay/pay/IPayCallback;

    invoke-static/range {v0 .. v13}, Lcom/bluepay/pay/BluePay;->a(Lcom/bluepay/pay/BluePay;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$2;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    :goto_1
    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$2;->a:Lcom/bluepay/pay/BluePay$2;

    invoke-static {v0}, Lcom/bluepay/pay/BluePay$2;->a(Lcom/bluepay/pay/BluePay$2;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget v1, p0, Lcom/bluepay/pay/BluePay$2$2;->n:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/bluepay/pay/BluePay;->setCheckNum(B)V

    if-eqz v9, :cond_2

    const-string v0, "t"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TRF"

    invoke-static {v0, v9}, Lcom/bluepay/data/g;->getSafePrice(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    :goto_2
    if-lez v8, :cond_3

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$2;->a:Lcom/bluepay/pay/BluePay$2;

    invoke-static {v0}, Lcom/bluepay/pay/BluePay$2;->a(Lcom/bluepay/pay/BluePay$2;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$2$2;->d:Landroid/app/Activity;

    const-string v2, "000000"

    iget-object v3, p0, Lcom/bluepay/pay/BluePay$2$2;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/bluepay/pay/BluePay$2$2;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/bluepay/pay/BluePay$2$2;->g:Ljava/lang/String;

    const-string v6, ""

    const-string v7, ""

    iget v9, p0, Lcom/bluepay/pay/BluePay$2$2;->h:I

    iget-object v10, p0, Lcom/bluepay/pay/BluePay$2$2;->i:Ljava/lang/String;

    const-string v11, ""

    iget-boolean v12, p0, Lcom/bluepay/pay/BluePay$2$2;->k:Z

    iget-object v13, p0, Lcom/bluepay/pay/BluePay$2$2;->l:Lcom/bluepay/pay/IPayCallback;

    invoke-static/range {v0 .. v13}, Lcom/bluepay/pay/BluePay;->a(Lcom/bluepay/pay/BluePay;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    :goto_3
    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$2;->m:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_1
    const-string v0, "0"

    move-object v9, v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    invoke-static {v0, v9}, Lcom/bluepay/data/g;->getSafePrice(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$2;->a:Lcom/bluepay/pay/BluePay$2;

    invoke-static {v0}, Lcom/bluepay/pay/BluePay$2;->a(Lcom/bluepay/pay/BluePay$2;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$2$2;->d:Landroid/app/Activity;

    const-string v2, "000000"

    iget-object v3, p0, Lcom/bluepay/pay/BluePay$2$2;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/bluepay/pay/BluePay$2$2;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/bluepay/pay/BluePay$2$2;->g:Ljava/lang/String;

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v9, v8}, Lcom/bluepay/sdk/b/h;->a(Ljava/lang/String;I)I

    move-result v8

    iget v9, p0, Lcom/bluepay/pay/BluePay$2$2;->h:I

    iget-object v10, p0, Lcom/bluepay/pay/BluePay$2$2;->i:Ljava/lang/String;

    const-string v11, ""

    iget-boolean v12, p0, Lcom/bluepay/pay/BluePay$2$2;->k:Z

    iget-object v13, p0, Lcom/bluepay/pay/BluePay$2$2;->l:Lcom/bluepay/pay/IPayCallback;

    invoke-static/range {v0 .. v13}, Lcom/bluepay/pay/BluePay;->a(Lcom/bluepay/pay/BluePay;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    goto :goto_3
.end method
