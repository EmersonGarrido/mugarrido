.class final Lcom/kunlun/platform/android/Kunlun$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->appPay(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$25;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$25;->val$itemName:Ljava/lang/String;

    iput p3, p0, Lcom/kunlun/platform/android/Kunlun$25;->val$price:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$25;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$25;->val$itemName:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/Kunlun$25;->val$price:I

    invoke-direct {v0, v1, v2, v3}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
