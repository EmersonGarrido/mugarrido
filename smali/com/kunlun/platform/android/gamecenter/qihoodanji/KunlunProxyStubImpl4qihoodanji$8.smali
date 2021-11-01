.class final Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;
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

.field private synthetic ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$itemName:Ljava/lang/String;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$price:I

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->bN:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 9

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$itemName:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$price:I

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->bN:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-virtual/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$price:I

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$itemName:Ljava/lang/String;

    const-string v4, ""

    const/4 v5, -0x1

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->bN:Ljava/lang/String;

    const-string v7, ""

    iget-object v8, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$8;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v8}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->a(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    goto :goto_0
.end method
