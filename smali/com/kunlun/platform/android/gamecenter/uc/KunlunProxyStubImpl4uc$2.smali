.class final Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/uc/gamesdk/UCCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/uc/gamesdk/UCCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$2;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic callback(ILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$2;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method
