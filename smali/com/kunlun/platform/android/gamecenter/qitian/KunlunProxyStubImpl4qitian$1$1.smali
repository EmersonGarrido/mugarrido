.class final Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ledi/floatwindow/util/FloatView$KeyBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->loginReback(Ljava/lang/String;Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickBack(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Lcom/ledi/util/Operate;->showFloatView(Landroid/app/Activity;IIZ)V

    return-void
.end method
