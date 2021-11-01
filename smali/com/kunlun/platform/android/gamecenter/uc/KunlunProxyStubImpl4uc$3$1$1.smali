.class final Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcn/uc/gamesdk/UCGameSDK;->defaultSDK()Lcn/uc/gamesdk/UCGameSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1$1$1;

    invoke-direct {v2}, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1$1$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcn/uc/gamesdk/UCGameSDK;->createFloatButton(Landroid/app/Activity;Lcn/uc/gamesdk/UCCallbackListener;)V

    invoke-static {}, Lcn/uc/gamesdk/UCGameSDK;->defaultSDK()Lcn/uc/gamesdk/UCGameSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$3$1$1;->val$activity:Landroid/app/Activity;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcn/uc/gamesdk/UCGameSDK;->showFloatButton(Landroid/app/Activity;DDZ)V
    :try_end_0
    .catch Lcn/uc/gamesdk/UCCallbackListenerNullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcn/uc/gamesdk/UCFloatButtonCreateException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KunlunProxyStubImpl4uc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createFloatButton error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/uc/gamesdk/UCCallbackListenerNullException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "KunlunProxyStubImpl4uc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createFloatButton error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/uc/gamesdk/UCFloatButtonCreateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
