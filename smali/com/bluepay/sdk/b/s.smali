.class Lcom/bluepay/sdk/b/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/sdk/b/r;

.field private final synthetic b:Landroid/widget/EditText;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Lcom/bluepay/interfaceClass/d;


# direct methods
.method constructor <init>(Lcom/bluepay/sdk/b/r;Landroid/widget/EditText;Landroid/content/Context;Lcom/bluepay/interfaceClass/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/s;->a:Lcom/bluepay/sdk/b/r;

    iput-object p2, p0, Lcom/bluepay/sdk/b/s;->b:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/bluepay/sdk/b/s;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/bluepay/sdk/b/s;->d:Lcom/bluepay/interfaceClass/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/bluepay/sdk/b/s;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bluepay/sdk/b/s;->c:Landroid/content/Context;

    const-string v1, "please input a real phone number"

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/bluepay/sdk/b/s;->d:Lcom/bluepay/interfaceClass/d;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/bluepay/interfaceClass/d;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
