.class public Lmu/origin/ro/ggplay/qjmu/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u0e41\u0e08\u0e49\u0e07\u0e40\u0e15\u0e37\u0e2d\u0e19"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    const-string v1, "\u0e40\u0e1e\u0e37\u0e48\u0e2d\u0e04\u0e27\u0e32\u0e21\u0e1b\u0e25\u0e2d\u0e14\u0e20\u0e31\u0e22\u0e43\u0e19\u0e44\u0e2d\u0e14\u0e35\u0e41\u0e25\u0e30\u0e1b\u0e23\u0e30\u0e2a\u0e1a\u0e01\u0e32\u0e23\u0e13\u0e4c\u0e01\u0e32\u0e23\u0e40\u0e25\u0e48\u0e19\u0e40\u0e01\u0e21\u0e17\u0e35\u0e48\u0e14\u0e35\u0e22\u0e34\u0e48\u0e07\u0e02\u0e36\u0e49\u0e19 \u0e42\u0e1b\u0e23\u0e14\u0e2d\u0e19\u0e38\u0e0d\u0e32\u0e15\u0e2a\u0e34\u0e17\u0e18\u0e34\u0e4c\u0e40\u0e2b\u0e25\u0e48\u0e32\u0e19\u0e35\u0e49\u0e01\u0e48\u0e2d\u0e19\u0e40\u0e02\u0e49\u0e32\u0e40\u0e01\u0e21 \u0e21\u0e34\u0e09\u0e30\u0e19\u0e31\u0e49\u0e19\u0e04\u0e38\u0e13\u0e08\u0e30\u0e44\u0e21\u0e48\u0e2a\u0e32\u0e21\u0e32\u0e23\u0e16\u0e40\u0e25\u0e48\u0e19\u0e40\u0e01\u0e21"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    const-string v1, "\u0e16\u0e31\u0e14\u0e44\u0e1b"

    new-instance v2, Lmu/origin/ro/ggplay/qjmu/MainActivity$1;

    invoke-direct {v2, p0}, Lmu/origin/ro/ggplay/qjmu/MainActivity$1;-><init>(Lmu/origin/ro/ggplay/qjmu/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 80
    return-void
.end method

.method private isAllowPerssion()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 37
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v1}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 38
    invoke-virtual {p0, v1}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->initView()V

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->setContentView(I)V

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 25
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->setTheme(I)V

    .line 30
    :goto_0
    invoke-direct {p0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->isAllowPerssion()V

    .line 31
    return-void

    .line 27
    :cond_0
    const v0, 0x1030242

    invoke-virtual {p0, v0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->setTheme(I)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 88
    if-ne p1, v4, :cond_0

    .line 89
    array-length v2, p3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget v2, p3, v2

    if-nez v2, :cond_1

    aget v2, p3, v4

    if-nez v2, :cond_1

    const/4 v2, 0x2

    aget v2, p3, v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    aget v2, p3, v2

    if-nez v2, :cond_1

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->finish()V

    .line 129
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v2}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2}, Lmu/origin/ro/ggplay/qjmu/MainActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u0e44\u0e1b\u0e2b\u0e19\u0e49\u0e32\u0e23\u0e32\u0e22\u0e25\u0e30\u0e40\u0e2d\u0e35\u0e22\u0e14\u0e41\u0e2d\u0e1e\u0e1e\u0e25\u0e34\u0e40\u0e04\u0e0a\u0e31\u0e19\u0e04\u0e25\u0e34\u0e01\u0e2d\u0e19\u0e38\u0e0d\u0e32\u0e15\u0e2a\u0e34\u0e17\u0e18\u0e34\u0e4c"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    const-string v2, "\u0e02\u0e49\u0e32\u0e21"

    new-instance v3, Lmu/origin/ro/ggplay/qjmu/MainActivity$2;

    invoke-direct {v3, p0}, Lmu/origin/ro/ggplay/qjmu/MainActivity$2;-><init>(Lmu/origin/ro/ggplay/qjmu/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 114
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "\u0e40\u0e1e\u0e37\u0e48\u0e2d\u0e04\u0e27\u0e32\u0e21\u0e1b\u0e25\u0e2d\u0e14\u0e20\u0e31\u0e22\u0e43\u0e19\u0e44\u0e2d\u0e14\u0e35\u0e08\u0e33\u0e40\u0e1b\u0e47\u0e19\u0e15\u0e49\u0e2d\u0e07\u0e2d\u0e19\u0e38\u0e0d\u0e32\u0e15\u0e2a\u0e34\u0e17\u0e18\u0e34\u0e4c"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 117
    const-string v2, "\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e2d\u0e35\u0e01\u0e04\u0e23\u0e31\u0e49\u0e07"

    new-instance v3, Lmu/origin/ro/ggplay/qjmu/MainActivity$3;

    invoke-direct {v3, p0}, Lmu/origin/ro/ggplay/qjmu/MainActivity$3;-><init>(Lmu/origin/ro/ggplay/qjmu/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
