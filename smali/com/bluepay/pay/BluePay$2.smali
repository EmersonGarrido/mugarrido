.class Lcom/bluepay/pay/BluePay$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/pay/BluePay;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:I

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Z

.field private final synthetic j:Lcom/bluepay/pay/IPayCallback;

.field private final synthetic k:I


# direct methods
.method constructor <init>(Lcom/bluepay/pay/BluePay;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/bluepay/pay/IPayCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/BluePay$2;->a:Lcom/bluepay/pay/BluePay;

    iput-object p2, p0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bluepay/pay/BluePay$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bluepay/pay/BluePay$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bluepay/pay/BluePay$2;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/bluepay/pay/BluePay$2;->f:Ljava/lang/String;

    iput p7, p0, Lcom/bluepay/pay/BluePay$2;->g:I

    iput-object p8, p0, Lcom/bluepay/pay/BluePay$2;->h:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/bluepay/pay/BluePay$2;->i:Z

    iput-object p10, p0, Lcom/bluepay/pay/BluePay$2;->j:Lcom/bluepay/pay/IPayCallback;

    iput p11, p0, Lcom/bluepay/pay/BluePay$2;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bluepay/pay/BluePay$2;)Lcom/bluepay/pay/BluePay;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2;->a:Lcom/bluepay/pay/BluePay;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 21

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    const-string v4, "layout"

    const-string v5, "bluep_smslist"

    invoke-static {v2, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    const-string v4, "id"

    const-string v5, "Bluep_payList"

    invoke-static {v2, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    const-string v4, "id"

    const-string v5, "Bluep_payTip"

    invoke-static {v2, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    const-string v5, "id"

    const-string v7, "Bluep_paybyYes"

    invoke-static {v4, v5, v7}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    const-string v5, "id"

    const-string v7, "Bluep_paybyNo"

    invoke-static {v4, v5, v7}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x24

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/bluepay/pay/BluePay$2;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bluepay/sdk/b/h;->d(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bluepay/sdk/b/h;->f()Ljava/util/Map;

    move-result-object v7

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    const-string v2, "ref file configuration error."

    invoke-static {v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/bluepay/pay/BluePay$2$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/pay/BluePay$2$1;-><init>(Lcom/bluepay/pay/BluePay$2;Landroid/app/AlertDialog;Landroid/app/Activity;[Ljava/lang/String;Landroid/widget/Button;)V

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/bluepay/pay/BluePay$2$2;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bluepay/pay/BluePay$2;->b:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/bluepay/pay/BluePay$2;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/bluepay/pay/BluePay$2;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/bluepay/pay/BluePay$2;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/bluepay/pay/BluePay$2;->g:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/bluepay/pay/BluePay$2;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/bluepay/pay/BluePay$2;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/bluepay/pay/BluePay$2;->i:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bluepay/pay/BluePay$2;->j:Lcom/bluepay/pay/IPayCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bluepay/pay/BluePay$2;->k:I

    move/from16 v18, v0

    move-object/from16 v5, p0

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v18}, Lcom/bluepay/pay/BluePay$2$2;-><init>(Lcom/bluepay/pay/BluePay$2;Landroid/widget/Button;Ljava/util/Map;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;Landroid/app/AlertDialog;I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bluepay/pay/BluePay$2$3;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Lcom/bluepay/pay/BluePay$2$3;-><init>(Lcom/bluepay/pay/BluePay$2;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v5, v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
