.class Lcom/bluepay/core/pay/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/u;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/u;Landroid/app/Activity;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/w;->a:Lcom/bluepay/core/pay/u;

    iput-object p2, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bluepay/core/pay/w;->c:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bluepay/core/pay/w;)Lcom/bluepay/core/pay/u;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/core/pay/w;->a:Lcom/bluepay/core/pay/u;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    const-string v0, "Tips"

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    const-string v2, "layout"

    const-string v3, "bluep_by_offline"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    const-string v1, "id"

    const-string v2, "et_msisdn"

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    const-string v2, "id"

    const-string v3, "tv_tips"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    const-string v3, "id"

    const-string v6, "rbtn_atm"

    invoke-static {v2, v3, v6}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    const-string v3, "id"

    const-string v6, "rbtn_otc"

    invoke-static {v2, v3, v6}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iget-object v3, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    const-string v6, "id"

    const-string v7, "rg_pay_channel"

    invoke-static {v3, v6, v7}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    new-instance v6, Lcom/bluepay/core/pay/x;

    iget-object v7, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    invoke-direct {v6, p0, v7, v1}, Lcom/bluepay/core/pay/x;-><init>(Lcom/bluepay/core/pay/w;Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v3, v6}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/bluepay/pay/Client;->phoneNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    const-string v2, "Cancel"

    new-instance v3, Lcom/bluepay/core/pay/y;

    iget-object v6, p0, Lcom/bluepay/core/pay/w;->c:Lcom/bluepay/data/Billing;

    invoke-direct {v3, p0, v6}, Lcom/bluepay/core/pay/y;-><init>(Lcom/bluepay/core/pay/w;Lcom/bluepay/data/Billing;)V

    invoke-virtual {v4, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    const-string v2, "OK"

    new-instance v3, Lcom/bluepay/core/pay/z;

    iget-object v6, p0, Lcom/bluepay/core/pay/w;->b:Landroid/app/Activity;

    iget-object v7, p0, Lcom/bluepay/core/pay/w;->c:Lcom/bluepay/data/Billing;

    invoke-direct {v3, p0, v0, v6, v7}, Lcom/bluepay/core/pay/z;-><init>(Lcom/bluepay/core/pay/w;Landroid/widget/EditText;Landroid/app/Activity;Lcom/bluepay/data/Billing;)V

    invoke-virtual {v4, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/bluepay/pay/Client;->phoneNum()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/bluepay/core/pay/w;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/w;->a:Lcom/bluepay/core/pay/u;

    iget-object v0, v0, Lcom/bluepay/core/pay/u;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->i:I

    iget-object v3, p0, Lcom/bluepay/core/pay/w;->c:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v1, v2, v8, v3}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_1
.end method
