.class public Lcom/kunlun/platform/android/KunlunLang;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/KunlunLang$a;,
        Lcom/kunlun/platform/android/KunlunLang$b;,
        Lcom/kunlun/platform/android/KunlunLang$c;,
        Lcom/kunlun/platform/android/KunlunLang$d;,
        Lcom/kunlun/platform/android/KunlunLang$e;,
        Lcom/kunlun/platform/android/KunlunLang$f;,
        Lcom/kunlun/platform/android/KunlunLang$g;,
        Lcom/kunlun/platform/android/KunlunLang$h;,
        Lcom/kunlun/platform/android/KunlunLang$i;,
        Lcom/kunlun/platform/android/KunlunLang$j;,
        Lcom/kunlun/platform/android/KunlunLang$k;,
        Lcom/kunlun/platform/android/KunlunLang$l;,
        Lcom/kunlun/platform/android/KunlunLang$m;,
        Lcom/kunlun/platform/android/KunlunLang$n;,
        Lcom/kunlun/platform/android/KunlunLang$o;,
        Lcom/kunlun/platform/android/KunlunLang$p;,
        Lcom/kunlun/platform/android/KunlunLang$q;,
        Lcom/kunlun/platform/android/KunlunLang$r;
    }
.end annotation


# static fields
.field private static aG:Lcom/kunlun/platform/android/KunlunLang;


# instance fields
.field private lang:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "en"

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLang;->lang:Ljava/lang/String;

    return-void
.end method

.method static aL()Ljava/lang/String;
    .locals 1

    const-string v0, "You are signed in with Google."

    return-object v0
.end method

.method static aM()Ljava/lang/String;
    .locals 1

    const-string v0, "Sign Out"

    return-object v0
.end method

.method public static getInstance()Lcom/kunlun/platform/android/KunlunLang;
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLang()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunLang;->lang:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "zh-tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$p;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$p;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    :goto_1
    sget-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    iput-object v0, v1, Lcom/kunlun/platform/android/KunlunLang;->lang:Ljava/lang/String;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto :goto_0

    :cond_2
    const-string v1, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ko"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$i;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$i;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto :goto_1

    :cond_4
    const-string v1, "jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ja"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$h;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$h;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto :goto_1

    :cond_6
    const-string v1, "vn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "vi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$q;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$q;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto :goto_1

    :cond_8
    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$b;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$b;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto :goto_1

    :cond_9
    const-string v1, "zh-cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$r;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$r;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto :goto_1

    :cond_a
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$f;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$f;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto :goto_1

    :cond_b
    const-string v1, "th"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$n;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$n;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_c
    const-string v1, "de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$c;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$c;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_d
    const-string v1, "fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$e;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$e;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_e
    const-string v1, "it"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$g;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$g;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_f
    const-string v1, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$m;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$m;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_10
    const-string v1, "tr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$o;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$o;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_11
    const-string v1, "pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$l;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$l;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_12
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$a;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$a;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_13
    const-string v1, "nl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$j;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$j;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_14
    const-string v1, "es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$d;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$d;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_15
    const-string v1, "pl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Lcom/kunlun/platform/android/KunlunLang$k;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang$k;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1

    :cond_16
    new-instance v1, Lcom/kunlun/platform/android/KunlunLang;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunLang;-><init>()V

    sput-object v1, Lcom/kunlun/platform/android/KunlunLang;->aG:Lcom/kunlun/platform/android/KunlunLang;

    goto/16 :goto_1
.end method


# virtual methods
.method P()Ljava/lang/String;
    .locals 1

    const-string v0, "Checking version..."

    return-object v0
.end method

.method Q()Ljava/lang/String;
    .locals 1

    const-string v0, "Version Update Note"

    return-object v0
.end method

.method R()Ljava/lang/String;
    .locals 1

    const-string v0, "Exit"

    return-object v0
.end method

.method S()Ljava/lang/String;
    .locals 1

    const-string v0, "Update"

    return-object v0
.end method

.method T()Ljava/lang/String;
    .locals 1

    const-string v0, "Cancel Update"

    return-object v0
.end method

.method U()Ljava/lang/String;
    .locals 1

    const-string v0, "Update Error"

    return-object v0
.end method

.method V()Ljava/lang/String;
    .locals 1

    const-string v0, "Failed to retrieve version information"

    return-object v0
.end method

.method W()Ljava/lang/String;
    .locals 1

    const-string v0, "Retry"

    return-object v0
.end method

.method X()Ljava/lang/String;
    .locals 1

    const-string v0, "Off"

    return-object v0
.end method

.method Y()Ljava/lang/String;
    .locals 1

    const-string v0, "Close the payment page?"

    return-object v0
.end method

.method Z()Ljava/lang/String;
    .locals 1

    const-string v0, "Are you sure you want to cancel logging in?"

    return-object v0
.end method

.method aA()Ljava/lang/String;
    .locals 1

    const-string v0, "Email"

    return-object v0
.end method

.method aB()Ljava/lang/String;
    .locals 1

    const-string v0, "I have read and agree to"

    return-object v0
.end method

.method aC()Ljava/lang/String;
    .locals 1

    const-string v0, "Terms of Service and Privacy Policy"

    return-object v0
.end method

.method aD()Ljava/lang/String;
    .locals 1

    const-string v0, "Please read and accept the Terms of Service and Privacy Policy first."

    return-object v0
.end method

.method aE()Ljava/lang/String;
    .locals 1

    const-string v0, "Back"

    return-object v0
.end method

.method aF()Ljava/lang/String;
    .locals 1

    const-string v0, "Submit"

    return-object v0
.end method

.method aG()Ljava/lang/String;
    .locals 1

    const-string v0, "Account:"

    return-object v0
.end method

.method aH()Ljava/lang/String;
    .locals 1

    const-string v0, "Change Account"

    return-object v0
.end method

.method aI()Ljava/lang/String;
    .locals 1

    const-string v0, "Entering the game..."

    return-object v0
.end method

.method aJ()Ljava/lang/String;
    .locals 1

    const-string v0, "Bind Account"

    return-object v0
.end method

.method aK()Ljava/lang/String;
    .locals 1

    const-string v0, "Change Password"

    return-object v0
.end method

.method aN()Ljava/lang/String;
    .locals 1

    const-string v0, "Change Account Password"

    return-object v0
.end method

.method aO()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method aP()Ljava/lang/String;
    .locals 1

    const-string v0, "Old password"

    return-object v0
.end method

.method aQ()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method aR()Ljava/lang/String;
    .locals 1

    const-string v0, "New password"

    return-object v0
.end method

.method aS()Ljava/lang/String;
    .locals 1

    const-string v0, "Re-enter new password"

    return-object v0
.end method

.method aT()Ljava/lang/String;
    .locals 1

    const-string v0, "Cancel"

    return-object v0
.end method

.method aU()Ljava/lang/String;
    .locals 1

    const-string v0, "Submit"

    return-object v0
.end method

.method aV()Ljava/lang/String;
    .locals 1

    const-string v0, "Password changed"

    return-object v0
.end method

.method aW()Ljava/lang/String;
    .locals 1

    const-string v0, "Bind Account"

    return-object v0
.end method

.method aX()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method aY()Ljava/lang/String;
    .locals 1

    const-string v0, "Email"

    return-object v0
.end method

.method aZ()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method aa()Ljava/lang/String;
    .locals 1

    const-string v0, "Failed to connect to network."

    return-object v0
.end method

.method ab()Ljava/lang/String;
    .locals 1

    const-string v0, "Sign In Canceled"

    return-object v0
.end method

.method ac()Ljava/lang/String;
    .locals 1

    const-string v0, "Signed in"

    return-object v0
.end method

.method ad()Ljava/lang/String;
    .locals 1

    const-string v0, "Sign In"

    return-object v0
.end method

.method ae()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method af()Ljava/lang/String;
    .locals 1

    const-string v0, "Username"

    return-object v0
.end method

.method ag()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method ah()Ljava/lang/String;
    .locals 1

    const-string v0, "Password"

    return-object v0
.end method

.method ai()Ljava/lang/String;
    .locals 1

    const-string v0, "Sign In"

    return-object v0
.end method

.method aj()Ljava/lang/String;
    .locals 1

    const-string v0, "Register"

    return-object v0
.end method

.method ak()Ljava/lang/String;
    .locals 1

    const-string v0, "Guest Login"

    return-object v0
.end method

.method al()Ljava/lang/String;
    .locals 1

    const-string v0, "Other Account:"

    return-object v0
.end method

.method am()Ljava/lang/String;
    .locals 1

    const-string v0, "Forgot password"

    return-object v0
.end method

.method an()Ljava/lang/String;
    .locals 1

    const-string v0, "Previous Google Account"

    return-object v0
.end method

.method ao()Ljava/lang/String;
    .locals 1

    const-string v0, "Select login mode"

    return-object v0
.end method

.method ap()Ljava/lang/String;
    .locals 1

    const-string v0, "Facebook"

    return-object v0
.end method

.method aq()Ljava/lang/String;
    .locals 1

    const-string v0, "Register"

    return-object v0
.end method

.method ar()Ljava/lang/String;
    .locals 1

    const-string v0, "Sign in"

    return-object v0
.end method

.method as()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method at()Ljava/lang/String;
    .locals 1

    const-string v0, "Guest Login"

    return-object v0
.end method

.method au()Ljava/lang/String;
    .locals 1

    const-string v0, "Register"

    return-object v0
.end method

.method av()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method aw()Ljava/lang/String;
    .locals 1

    const-string v0, "Username"

    return-object v0
.end method

.method ax()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method ay()Ljava/lang/String;
    .locals 1

    const-string v0, "Password"

    return-object v0
.end method

.method az()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method ba()Ljava/lang/String;
    .locals 1

    const-string v0, "Password"

    return-object v0
.end method

.method bb()Ljava/lang/String;
    .locals 1

    const-string v0, "Re-enter your password"

    return-object v0
.end method

.method bc()Ljava/lang/String;
    .locals 1

    const-string v0, "Cancel"

    return-object v0
.end method

.method bd()Ljava/lang/String;
    .locals 1

    const-string v0, "Submit"

    return-object v0
.end method

.method be()Ljava/lang/String;
    .locals 1

    const-string v0, "Account bound"

    return-object v0
.end method

.method public cancel()Ljava/lang/String;
    .locals 1

    const-string v0, "Cancel"

    return-object v0
.end method

.method public loading()Ljava/lang/String;
    .locals 1

    const-string v0, "Loading..."

    return-object v0
.end method

.method public notSupport()Ljava/lang/String;
    .locals 1

    const-string v0, "Device does not support this function. Please register or login."

    return-object v0
.end method

.method public ok()Ljava/lang/String;
    .locals 1

    const-string v0, "Okay"

    return-object v0
.end method
