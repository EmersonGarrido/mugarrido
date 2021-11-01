.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunLoginAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$4;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$4;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/view/View;)V

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v1, "Kunlun.facebookWebLogin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$4;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    const-string v1, "facebookWebLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$4;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    const-string v1, "facebookAppLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Ljava/lang/String;)V

    goto :goto_0
.end method
