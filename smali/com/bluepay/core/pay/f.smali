.class Lcom/bluepay/core/pay/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluepay/core/pay/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bluepay/core/pay/f;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bluepay/core/pay/f;->a:Landroid/app/Activity;

    const-string v1, "BluePay"

    invoke-static {v0, v1}, Lcom/bluepay/sdk/log/Share;->init(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "version"

    const v1, 0x5f66da4

    invoke-static {v0, v1}, Lcom/bluepay/sdk/log/Share;->setInt(Ljava/lang/String;I)V

    const-string v0, "BluePay_statUrl"

    iget-object v1, p0, Lcom/bluepay/core/pay/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bluepay/sdk/log/Share;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "BluePay_apiUrl"

    iget-object v1, p0, Lcom/bluepay/core/pay/f;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bluepay/sdk/log/Share;->setString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/ClientHelper;->generateSystemTime()I

    move-result v0

    sput v0, Lcom/bluepay/core/pay/BlueManager;->versionTime:I

    const-string v0, "BluePay_verionTime"

    sget v1, Lcom/bluepay/core/pay/BlueManager;->versionTime:I

    invoke-static {v0, v1}, Lcom/bluepay/sdk/log/Share;->setInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/bluepay/sdk/log/Share;->commit()V

    return-void
.end method
