.class final Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coolcloud/uac/android/gameassistplug/GameAssistApi$SwitchingAccount;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$2;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchingAccounts()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$2;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Landroid/app/Activity;)V

    return-void
.end method
