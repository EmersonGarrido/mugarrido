.class Lcom/bluepay/pay/BluePay$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/pay/BluePay$2;

.field private final synthetic b:Landroid/app/AlertDialog;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:[Ljava/lang/String;

.field private final synthetic e:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/bluepay/pay/BluePay$2;Landroid/app/AlertDialog;Landroid/app/Activity;[Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/BluePay$2$1;->a:Lcom/bluepay/pay/BluePay$2;

    iput-object p2, p0, Lcom/bluepay/pay/BluePay$2$1;->b:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/bluepay/pay/BluePay$2$1;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bluepay/pay/BluePay$2$1;->d:[Ljava/lang/String;

    iput-object p5, p0, Lcom/bluepay/pay/BluePay$2$1;->e:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$2$1;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$2$1;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02001b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$2$1;->d:[Ljava/lang/String;

    new-instance v2, Lcom/bluepay/pay/BluePay$2$1$1;

    iget-object v3, p0, Lcom/bluepay/pay/BluePay$2$1;->e:Landroid/widget/Button;

    iget-object v4, p0, Lcom/bluepay/pay/BluePay$2$1;->d:[Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/bluepay/pay/BluePay$2$1$1;-><init>(Lcom/bluepay/pay/BluePay$2$1;Landroid/widget/Button;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
