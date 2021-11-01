.class final Lcom/kunlun/platform/android/KunLunPaymentDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunLunPaymentDialog;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$2;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$2;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    const-string v0, "KunlunDialog onBackPressed"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    return-void
.end method
