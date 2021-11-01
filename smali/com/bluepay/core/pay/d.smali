.class Lcom/bluepay/core/pay/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/bluepay/data/g;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/widget/EditText;

.field private final synthetic d:Landroid/widget/EditText;

.field private final synthetic e:Landroid/widget/EditText;

.field private final synthetic f:Landroid/widget/EditText;

.field private final synthetic g:Landroid/widget/EditText;

.field private final synthetic h:Landroid/widget/EditText;

.field private final synthetic i:Landroid/widget/EditText;

.field private final synthetic j:Landroid/app/AlertDialog;

.field private final synthetic k:Landroid/widget/TextView;

.field private final synthetic l:Landroid/widget/ImageView;

.field private final synthetic m:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bluepay/data/g;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    iput-object p2, p0, Lcom/bluepay/core/pay/d;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/bluepay/core/pay/d;->c:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/bluepay/core/pay/d;->d:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/bluepay/core/pay/d;->e:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/bluepay/core/pay/d;->f:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/bluepay/core/pay/d;->g:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/bluepay/core/pay/d;->h:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/bluepay/core/pay/d;->i:Landroid/widget/EditText;

    iput-object p10, p0, Lcom/bluepay/core/pay/d;->j:Landroid/app/AlertDialog;

    iput-object p11, p0, Lcom/bluepay/core/pay/d;->k:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/bluepay/core/pay/d;->l:Landroid/widget/ImageView;

    iput-object p13, p0, Lcom/bluepay/core/pay/d;->m:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    :try_start_0
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-virtual {v2}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unipin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->b:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->c:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->d:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->e:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-virtual {v2}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unipin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->g:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->h:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "IDMB"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "S"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-virtual {v2}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "telkomsel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->f:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-eq v2, v3, :cond_4

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-virtual {v0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x31

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    :goto_2
    return-void

    :cond_2
    iget-object v2, p0, Lcom/bluepay/core/pay/d;->f:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/bluepay/core/pay/d;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/bluepay/core/pay/d;->i:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-virtual {v2}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unipin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_5

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/bluepay/core/pay/d;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lcom/bluepay/data/Billing;

    iget-object v1, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-direct {v0, v1}, Lcom/bluepay/data/Billing;-><init>(Lcom/bluepay/data/g;)V

    const-string v1, "showCardDialog error"

    iput-object v1, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->i:I

    invoke-virtual {v1, v2, v3, v5, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_2

    :cond_6
    :try_start_1
    sget-boolean v2, Lcom/bluepay/core/pay/BlueManager;->b:Z

    if-nez v2, :cond_9

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_9

    :cond_7
    iget-object v0, p0, Lcom/bluepay/core/pay/d;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-virtual {v0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "12call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bluepay/core/pay/d;->m:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "bluep_icon_one_calltip"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/bluepay/core/pay/d;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bluepay/core/pay/d;->m:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "bluep_icon_true_tip"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_9
    sget-boolean v2, Lcom/bluepay/core/pay/BlueManager;->b:Z

    if-eqz v2, :cond_c

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/bluepay/core/pay/d;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-virtual {v0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "12call"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bluepay/core/pay/d;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bluepay/core/pay/d;->m:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "bluep_icon_one_calltip"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/bluepay/core/pay/d;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bluepay/core/pay/d;->m:Landroid/content/Context;

    const-string v2, "drawable"

    const-string v3, "bluep_icon_true_tip"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_c
    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->j:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    invoke-static {}, Lcom/bluepay/pay/BluePay;->getShowCardLoading()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-virtual {v2}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x6

    invoke-static {v4}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_d
    new-instance v2, Lcom/bluepay/data/Billing;

    iget-object v3, p0, Lcom/bluepay/core/pay/d;->a:Lcom/bluepay/data/g;

    invoke-direct {v2, v3}, Lcom/bluepay/data/Billing;-><init>(Lcom/bluepay/data/g;)V

    invoke-virtual {v2, v1}, Lcom/bluepay/data/Billing;->setCard(Ljava/lang/String;)V

    if-eqz v1, :cond_e

    invoke-virtual {v2, v0}, Lcom/bluepay/data/Billing;->setSerialNo(Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    const-string v0, "confirm to pay"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bluepay/core/pay/BlueManager;->a(Z)V

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_2

    :cond_e
    const-string v0, ""

    invoke-virtual {v2, v0}, Lcom/bluepay/data/Billing;->setSerialNo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
