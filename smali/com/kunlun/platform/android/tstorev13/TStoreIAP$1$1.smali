.class final Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic B:Ljava/lang/String;

.field private final synthetic lh:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;->lh:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;->B:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;->lh:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;->B:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1$1;->val$orderId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/tstorev13/TStoreIAP;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
