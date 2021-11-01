.class public Lcom/bluepay/core/pay/ae;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluepay/core/pay/ae$a;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:Z

.field private static c:Landroid/os/AsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f4

    sput v0, Lcom/bluepay/core/pay/ae;->a:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bluepay/core/pay/ae;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIZ)I
    .locals 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-gez p0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, -0x64

    if-ne p1, v1, :cond_5

    move v1, v0

    :goto_1
    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    array-length v3, v3

    if-lt v0, v3, :cond_2

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v0, v0, v1

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v3, v3, v0

    if-le p0, v3, :cond_3

    move v1, v0

    :cond_3
    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v3, v3, v0

    if-eq p0, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    div-int/lit8 v1, p0, 0x2

    :goto_2
    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v3, v3, v0

    if-nez v3, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v3, v3, v0

    if-lt v1, v3, :cond_7

    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ge v1, v3, :cond_7

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_0

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static a()Landroid/os/AsyncTask;
    .locals 1

    sget-object v0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/bluepay/interfaceClass/c;)V
    .locals 2

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/Billing;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/bluepay/core/pay/ae$a;->a(Lcom/bluepay/data/Billing;Ljava/lang/String;Lcom/bluepay/interfaceClass/c;)Landroid/os/AsyncTask;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Sdk error"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected static a(Landroid/os/AsyncTask;)Z
    .locals 1

    invoke-static {p0}, Lcom/bluepay/core/pay/ae;->b(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b()V
    .locals 2

    sget-object v0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected static b(Landroid/os/AsyncTask;)Z
    .locals 1

    invoke-static {}, Lcom/bluepay/core/pay/ae;->a()Landroid/os/AsyncTask;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static c(Landroid/os/AsyncTask;)V
    .locals 0

    invoke-static {}, Lcom/bluepay/core/pay/ae;->b()V

    sput-object p0, Lcom/bluepay/core/pay/ae;->c:Landroid/os/AsyncTask;

    return-void
.end method
