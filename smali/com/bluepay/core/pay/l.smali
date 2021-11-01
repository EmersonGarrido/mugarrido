.class Lcom/bluepay/core/pay/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/i;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/i;Landroid/app/Activity;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/l;->a:Lcom/bluepay/core/pay/i;

    iput-object p2, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bluepay/core/pay/l;->c:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bluepay/core/pay/l;)Lcom/bluepay/core/pay/i;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/core/pay/l;->a:Lcom/bluepay/core/pay/i;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    const-string v4, "drawable"

    const-string v5, "icon"

    invoke-static {v3, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    const-string v6, "drawable"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bluep_logo_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/bluepay/core/pay/l;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v8}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/bluepay/core/pay/l;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v6}, Lcom/bluepay/data/Billing;->getDesMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v12, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/bluepay/core/pay/l;->a:Lcom/bluepay/core/pay/i;

    new-instance v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;Landroid/widget/Button;)V

    iget-object v5, p0, Lcom/bluepay/core/pay/l;->a:Lcom/bluepay/core/pay/i;

    invoke-static {v5}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;)Landroid/widget/Button;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v6}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v6, Landroid/widget/EditText;

    iget-object v7, p0, Lcom/bluepay/core/pay/l;->b:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v6}, Lcom/bluepay/core/pay/i;->a(Landroid/widget/EditText;)V

    invoke-static {}, Lcom/bluepay/core/pay/i;->a()Landroid/widget/EditText;

    move-result-object v6

    const-string v7, "please input verification code"

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/bluepay/core/pay/l;->a:Lcom/bluepay/core/pay/i;

    invoke-static {v6}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/bluepay/core/pay/i;->a()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/bluepay/core/pay/l;->a:Lcom/bluepay/core/pay/i;

    iget-object v2, v2, Lcom/bluepay/core/pay/i;->c:Landroid/os/Handler;

    new-instance v4, Lcom/bluepay/core/pay/i$c;

    iget-object v5, p0, Lcom/bluepay/core/pay/l;->a:Lcom/bluepay/core/pay/i;

    iget-object v6, p0, Lcom/bluepay/core/pay/l;->c:Lcom/bluepay/data/Billing;

    invoke-direct {v4, v5, v6}, Lcom/bluepay/core/pay/i$c;-><init>(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v2, p0, Lcom/bluepay/core/pay/l;->a:Lcom/bluepay/core/pay/i;

    invoke-static {v2}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;)Landroid/widget/Button;

    move-result-object v2

    new-instance v4, Lcom/bluepay/core/pay/m;

    iget-object v5, p0, Lcom/bluepay/core/pay/l;->c:Lcom/bluepay/data/Billing;

    invoke-direct {v4, p0, v5, v3}, Lcom/bluepay/core/pay/m;-><init>(Lcom/bluepay/core/pay/l;Lcom/bluepay/data/Billing;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const-string v1, "Cancel"

    new-instance v2, Lcom/bluepay/core/pay/n;

    iget-object v3, p0, Lcom/bluepay/core/pay/l;->c:Lcom/bluepay/data/Billing;

    invoke-direct {v2, p0, v3}, Lcom/bluepay/core/pay/n;-><init>(Lcom/bluepay/core/pay/l;Lcom/bluepay/data/Billing;)V

    invoke-virtual {v0, v9, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v1, "OK"

    new-instance v2, Lcom/bluepay/core/pay/o;

    iget-object v3, p0, Lcom/bluepay/core/pay/l;->c:Lcom/bluepay/data/Billing;

    invoke-direct {v2, p0, v3}, Lcom/bluepay/core/pay/o;-><init>(Lcom/bluepay/core/pay/l;Lcom/bluepay/data/Billing;)V

    invoke-virtual {v0, v12, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
