.class final Lcom/kunlun/platform/android/Kunlun$13;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic C:Ljava/lang/String;

.field private final synthetic D:Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$13;->C:Ljava/lang/String;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$13;->D:Lcom/kunlun/platform/android/Kunlun$GetOrderListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$13;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunDataEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$13;->D:Lcom/kunlun/platform/android/Kunlun$GetOrderListener;

    invoke-interface {v3, v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$GetOrderListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void
.end method
