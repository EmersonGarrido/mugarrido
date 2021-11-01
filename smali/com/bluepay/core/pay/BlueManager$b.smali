.class Lcom/bluepay/core/pay/BlueManager$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/core/pay/BlueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/EditText;

.field b:Landroid/widget/TextView;

.field c:Landroid/content/Context;

.field d:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    iput-object p1, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/bluepay/core/pay/BlueManager$b;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/bluepay/core/pay/BlueManager$b;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bluepay/core/pay/BlueManager$b;->c:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "et_Seral_first"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bluepay/core/pay/BlueManager$b;->c:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "et_Seral_second"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bluepay/core/pay/BlueManager$b;->c:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "et_Seral_third"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bluepay/core/pay/BlueManager$b;->c:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "et_Seral_fourth"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bluepay/core/pay/BlueManager$b;->c:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "et_unipin_first_input"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_7

    iput-boolean v4, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/bluepay/core/pay/BlueManager$b;->c:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "et_unipin_second_input"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bluepay/core/pay/BlueManager$b;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/bluepay/core/pay/BlueManager$b;->d:Z

    goto/16 :goto_1
.end method
