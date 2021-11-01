.class Lmu/origin/ro/ggplay/qjmu/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/MainActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/MainActivity;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/MainActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/MainActivity$3;->this$0:Lmu/origin/ro/ggplay/qjmu/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 120
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/MainActivity$3;->this$0:Lmu/origin/ro/ggplay/qjmu/MainActivity;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, v4}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 121
    return-void
.end method
