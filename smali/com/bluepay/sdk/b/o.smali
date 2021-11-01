.class Lcom/bluepay/sdk/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/sdk/b/n;


# direct methods
.method constructor <init>(Lcom/bluepay/sdk/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/o;->a:Lcom/bluepay/sdk/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    return-void
.end method
