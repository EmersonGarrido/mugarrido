.class final Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ga:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->ga:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$orderId:Ljava/lang/String;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$price:I

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$itemName:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->ga:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3;->a(Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3;)Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$orderId:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$price:I

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$itemName:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$3$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;->a(Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method
