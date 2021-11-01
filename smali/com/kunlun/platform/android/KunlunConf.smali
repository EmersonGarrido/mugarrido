.class public Lcom/kunlun/platform/android/KunlunConf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/KunlunConf$a;,
        Lcom/kunlun/platform/android/KunlunConf$b;,
        Lcom/kunlun/platform/android/KunlunConf$c;,
        Lcom/kunlun/platform/android/KunlunConf$d;,
        Lcom/kunlun/platform/android/KunlunConf$e;,
        Lcom/kunlun/platform/android/KunlunConf$f;,
        Lcom/kunlun/platform/android/KunlunConf$g;,
        Lcom/kunlun/platform/android/KunlunConf$h;,
        Lcom/kunlun/platform/android/KunlunConf$i;,
        Lcom/kunlun/platform/android/KunlunConf$j;,
        Lcom/kunlun/platform/android/KunlunConf$k;,
        Lcom/kunlun/platform/android/KunlunConf$l;,
        Lcom/kunlun/platform/android/KunlunConf$m;,
        Lcom/kunlun/platform/android/KunlunConf$n;,
        Lcom/kunlun/platform/android/KunlunConf$o;,
        Lcom/kunlun/platform/android/KunlunConf$p;,
        Lcom/kunlun/platform/android/KunlunConf$q;,
        Lcom/kunlun/platform/android/KunlunConf$r;,
        Lcom/kunlun/platform/android/KunlunConf$s;,
        Lcom/kunlun/platform/android/KunlunConf$t;,
        Lcom/kunlun/platform/android/KunlunConf$u;,
        Lcom/kunlun/platform/android/KunlunConf$v;,
        Lcom/kunlun/platform/android/KunlunConf$w;,
        Lcom/kunlun/platform/android/KunlunConf$x;,
        Lcom/kunlun/platform/android/KunlunConf$y;,
        Lcom/kunlun/platform/android/KunlunConf$z;,
        Lcom/kunlun/platform/android/KunlunConf$A;,
        Lcom/kunlun/platform/android/KunlunConf$B;,
        Lcom/kunlun/platform/android/KunlunConf$C;,
        Lcom/kunlun/platform/android/KunlunConf$D;,
        Lcom/kunlun/platform/android/KunlunConf$E;,
        Lcom/kunlun/platform/android/KunlunConf$F;,
        Lcom/kunlun/platform/android/KunlunConf$G;,
        Lcom/kunlun/platform/android/KunlunConf$H;,
        Lcom/kunlun/platform/android/KunlunConf$I;,
        Lcom/kunlun/platform/android/KunlunConf$J;,
        Lcom/kunlun/platform/android/KunlunConf$K;,
        Lcom/kunlun/platform/android/KunlunConf$L;,
        Lcom/kunlun/platform/android/KunlunConf$M;,
        Lcom/kunlun/platform/android/KunlunConf$N;,
        Lcom/kunlun/platform/android/KunlunConf$O;,
        Lcom/kunlun/platform/android/KunlunConf$P;,
        Lcom/kunlun/platform/android/KunlunConf$Q;,
        Lcom/kunlun/platform/android/KunlunConf$R;,
        Lcom/kunlun/platform/android/KunlunConf$S;,
        Lcom/kunlun/platform/android/KunlunConf$T;
    }
.end annotation


# static fields
.field private static final X:Landroid/os/Bundle;

.field private static Y:Lcom/kunlun/platform/android/KunlunConf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic N()Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$T;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$T;-><init>()V

    iput-object p0, v0, Lcom/kunlun/platform/android/KunlunConf$T;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method static f()V
    .locals 2

    const-string v0, "location"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "world"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$C;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$C;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    :goto_0
    const-string v0, "company"

    sget-object v1, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunConf;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "acid"

    sget-object v1, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunConf;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "domain"

    sget-object v1, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunConf;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$F;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$F;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto :goto_0

    :cond_1
    const-string v1, "tw-upgame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$G;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$G;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto :goto_0

    :cond_2
    const-string v1, "my"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$z;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$z;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto :goto_0

    :cond_3
    const-string v1, "my_en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "my-en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$A;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$A;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto :goto_0

    :cond_5
    const-string v1, "jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$v;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$v;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto :goto_0

    :cond_6
    const-string v1, "jp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$w;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$w;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_7
    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$S;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$S;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_8
    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "cn-supercell"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$g;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$g;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_a
    const-string v1, "cn-bzwx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$h;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$h;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_b
    const-string v1, "cn-kdyh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$i;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$i;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_c
    const-string v1, "th"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$D;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$D;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_d
    const-string v1, "th2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "th-en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$E;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$E;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_f
    const-string v1, "id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$t;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$t;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_10
    const-string v1, "id-en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$u;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$u;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_11
    const-string v1, "vn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "vn-mplay8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$H;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$H;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_13
    const-string v1, "vn2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "vn-monghiepkhach"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$I;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$I;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_15
    const-string v1, "vn3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "vn-mobilegame"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$J;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$J;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_17
    const-string v1, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$x;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$x;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_18
    const-string v1, "kr2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$y;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$y;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_19
    const-string v1, "ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$B;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$B;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_1a
    const-string v1, "eu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "eu-en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1b
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$m;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$m;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_1c
    const-string v1, "de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "eu-de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$l;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$l;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_1e
    const-string v1, "fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "eu-fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_1f
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$o;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$o;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_20
    const-string v1, "it"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "eu-it"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$p;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$p;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_22
    const-string v1, "tr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "eu-tr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :cond_23
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$s;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$s;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_24
    const-string v1, "pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "eu-pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_25
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$r;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$r;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_26
    const-string v1, "pl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$q;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$q;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_27
    const-string v1, "es"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$n;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$n;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_28
    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$f;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$f;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_29
    const-string v1, "allstargames-en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$c;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$c;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_2a
    const-string v1, "allstargames-de"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$b;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$b;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_2b
    const-string v1, "allstargames-fr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$d;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$d;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_2c
    const-string v1, "allstargames-it"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$e;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$e;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_2d
    new-instance v1, Lcom/kunlun/platform/android/KunlunConf$1;

    invoke-direct {v1, v0}, Lcom/kunlun/platform/android/KunlunConf$1;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_2e
    const-string v1, "world-tw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$Q;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$Q;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_2f
    const-string v1, "world-kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$N;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$N;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_30
    const-string v1, "world-jp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$M;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$M;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_31
    const-string v1, "world-ru"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$O;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$O;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_32
    const-string v1, "world-eu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$L;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$L;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_33
    const-string v1, "world-sgp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$P;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$P;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_34
    const-string v1, "world-br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$K;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$K;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    goto/16 :goto_0

    :cond_35
    new-instance v0, Lcom/kunlun/platform/android/KunlunConf$R;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunConf$R;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    const-string v0, "location"

    const-string v1, "world-us"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method static getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    sget-object v5, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getConf()Lcom/kunlun/platform/android/KunlunConf;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->f()V

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunConf;->Y:Lcom/kunlun/platform/android/KunlunConf;

    return-object v0
.end method

.method static setParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "KunlunConf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setParam:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunConf;->X:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method A()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method B()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method C()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method D()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method E()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method F()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method G()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method H()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method I()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method J()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method K()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method L()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method M()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method n()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method o()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method p()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method q()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method r()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method s()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method t()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method u()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method v()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method w()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method x()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method y()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method z()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->b(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method
