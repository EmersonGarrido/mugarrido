.class final Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2$1;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2$1$1;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snailgame/mobilesdk/SnailCommplatform;->createFloatView(Landroid/app/Activity;Z)V

    return-void
.end method
