.class final Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RegistListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->smsPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$itemName:Ljava/lang/String;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$price:I

    iput p5, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$appRate:I

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->bN:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p8, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$itemName:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$price:I

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$appRate:I

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->bN:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-virtual/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$7;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x2

    const-string v2, "Login faild"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
