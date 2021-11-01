.class public Lcom/bluepay/data/e;
.super Ljava/lang/Object;


# static fields
.field public static A:I = 0x0

.field public static B:I = 0x0

.field public static C:I = 0x0

.field public static D:I = 0x0

.field public static E:I = 0x0

.field public static F:I = 0x0

.field public static G:I = 0x0

.field private static H:Ljava/util/Map; = null

.field private static I:Ljava/util/Map; = null

.field private static J:Ljava/util/Map; = null

.field private static K:Ljava/util/Map; = null

.field private static final L:Ljava/lang/String; = "Charging Failed, Please try again later, or contact 02-0330090."

.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0xc8

    sput v0, Lcom/bluepay/data/e;->a:I

    const/16 v0, 0xc9

    sput v0, Lcom/bluepay/data/e;->b:I

    const/16 v0, 0xcb

    sput v0, Lcom/bluepay/data/e;->c:I

    const/16 v0, 0x190

    sput v0, Lcom/bluepay/data/e;->d:I

    const/16 v0, 0x191

    sput v0, Lcom/bluepay/data/e;->e:I

    const/16 v0, 0x192

    sput v0, Lcom/bluepay/data/e;->f:I

    const/16 v0, 0x193

    sput v0, Lcom/bluepay/data/e;->g:I

    const/16 v0, 0x194

    sput v0, Lcom/bluepay/data/e;->h:I

    const/16 v0, 0x195

    sput v0, Lcom/bluepay/data/e;->i:I

    const/16 v0, 0x196

    sput v0, Lcom/bluepay/data/e;->j:I

    const/16 v0, 0x197

    sput v0, Lcom/bluepay/data/e;->k:I

    const/16 v0, 0x1f4

    sput v0, Lcom/bluepay/data/e;->l:I

    const/16 v0, 0x1f5

    sput v0, Lcom/bluepay/data/e;->m:I

    const/16 v0, 0x1f6

    sput v0, Lcom/bluepay/data/e;->n:I

    const/16 v0, 0x1f7

    sput v0, Lcom/bluepay/data/e;->o:I

    const/16 v0, 0x1f8

    sput v0, Lcom/bluepay/data/e;->p:I

    const/16 v0, 0x1f9

    sput v0, Lcom/bluepay/data/e;->q:I

    const/16 v0, 0x1fa

    sput v0, Lcom/bluepay/data/e;->r:I

    const/16 v0, 0x1fb

    sput v0, Lcom/bluepay/data/e;->s:I

    const/16 v0, 0x1fc

    sput v0, Lcom/bluepay/data/e;->t:I

    const/16 v0, 0x1fd

    sput v0, Lcom/bluepay/data/e;->u:I

    const/16 v0, 0x1fe

    sput v0, Lcom/bluepay/data/e;->v:I

    const/16 v0, 0x1ff

    sput v0, Lcom/bluepay/data/e;->w:I

    const/16 v0, 0x258

    sput v0, Lcom/bluepay/data/e;->x:I

    const/16 v0, 0x259

    sput v0, Lcom/bluepay/data/e;->y:I

    const/16 v0, 0x25a

    sput v0, Lcom/bluepay/data/e;->z:I

    const/16 v0, 0x25b

    sput v0, Lcom/bluepay/data/e;->A:I

    const/16 v0, 0x25c

    sput v0, Lcom/bluepay/data/e;->B:I

    const/16 v0, 0x25d

    sput v0, Lcom/bluepay/data/e;->C:I

    const/16 v0, 0x25e

    sput v0, Lcom/bluepay/data/e;->D:I

    const/16 v0, 0x25f

    sput v0, Lcom/bluepay/data/e;->E:I

    const/16 v0, 0x260

    sput v0, Lcom/bluepay/data/e;->F:I

    const/16 v0, 0x263

    sput v0, Lcom/bluepay/data/e;->G:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(unknown error)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Charging Success"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "request has send,please wait"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:203)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:400)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:401)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:402)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(403)The user has no SIM card 2. Non-supported SIM card type. 3. The carriers do not support SIM card"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:404)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:405)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:406)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:407)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:500)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(501)Network connection error.Please check you network state."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:502)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:503)Charging Failed,Please use the wireless network, do not use wifi.If you have problems, please contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:504)Sorry, you have paid for this game more than daily limitation, please try again tomorrow. If you have problems, please contact 02-0330090. "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:505)Sorry, you have paid for this game more than monthly limitation, please try again next month. If you have problems, please contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:506)Sorry, you are in the block list, please contact 02-0330090 if you need."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:507)Sorry, you cannot repeat payment within 60 sec, please try again later."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:508)The PIN you input is invalid or has been used."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:509)Sorry, your PIN code is invalid, please confirm and try again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:510)The PIN you input has expired."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:511)Sorry. input failed, Please try again later"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:600)Charging Failed, Please try again later, or contact 02-0330090. "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:601)Sorry, you have no enough balance, please do topup and try again."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:602)Sorry, your account status is abnormal, please contact 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(603)Charging Failed , You have to cancel the operation"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:605)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:606)There is not advertising for a moment,Please try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:607)There is not advertising for a moment,Please try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:608)There is not advertising for a moment\uff0cPlease try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "The price must be greater than 200 thb."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(unknown error)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sukses mengisi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "request has send,please wait"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:203)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gagal mengisi(400), nanti silakan coba lagi , atau hubungi 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gagal mengisi(401), nanti silakan coba lagi , atau hubungi 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:402)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(403)1. User tidak memiliki kartu SIM 2. Non-didukung SIM jenis kartu. 3. operator tidak mendukung kartu SIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:404)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:405)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:406)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:407)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gagal mengisi(500), nanti silakan coba lagi , atau hubungi 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(501)Kesalahan jaringan, periksa pengaturan jaringan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "gagal mengisi(500), nanti silakan coba lagi , atau hubungi 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(503)Pengguna tidak diperbolehkan untuk mengakses jaringan hanya mendukung penagihan jaringan nirkabel, tidak mendukung wifi."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Maaf, Anda sudah membayar lebih dari pembatasan harian untuk game ini,  silakan coba lagi besok. Kalau Anda ada pertanyaan, silakan hubungi 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Maaf, Anda sudah membayar lebih dari pembatasan bulanan untuk game ini,  silakan coba lagi bulan depan. Kalau Anda ada pertanyaan, silakan hubungi 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Maaf, Anda berada di daftar blok, silakan hubungi 02-0330090 jika Anda membutuhkan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Maaf, Anda tidak boleh mengulangi pembayaran dalam waktu 60 detik, nanti silakan coba lagi "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PIN yang Anda masukkan tidak valid atau sudah digunakan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Maaf, kode PIN Anda tidak valid, silakan konfirmasi dan coba lagi."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PIN yang Anda masukkan sudah kadaluarsa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Maaf, gagal memasukkan, nanti silakan coba lagi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PIN yang Anda masukkan sudah kadaluarsa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Maaf, Anda tidak punya keseimbangan yang cukup, silakan lakukan topup dan coba lagi."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Maaf, status akun Anda tidak normal, silakan hubungi 02-645636"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(603)Batal Pembayaran"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:605)Charging Failed , Please try again later, or contact 02-6456436."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:606)There is not advertising for a moment,Please try again later, or contact 02-6456436."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:607)There is not advertising for a moment,Please try again later, or contact 02-6456436."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:608)There is not advertising for a moment\uff0cPlease try again later, or contact 02-6456436."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(unknown error)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23\u0e2a\u0e33\u0e40\u0e23\u0e47\u0e08"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "request has send,please wait"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:203)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e01\u0e32\u0e23\u0e0b\u0e37\u0e49\u0e2d\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27(400) \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e43\u0e19\u0e20\u0e32\u0e22\u0e2b\u0e25\u0e31\u0e07 \u0e2b\u0e23\u0e37\u0e2d\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d 02-6456436"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e01\u0e32\u0e23\u0e0b\u0e37\u0e49\u0e2d\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27(401) \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e43\u0e19\u0e20\u0e32\u0e22\u0e2b\u0e25\u0e31\u0e07 \u0e2b\u0e23\u0e37\u0e2d\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d 02-6456436"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:402)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(403)1. \u0e1c\u0e39\u0e49\u0e43\u0e0a\u0e49\u0e21\u0e35\u0e0b\u0e34\u0e21\u0e01\u0e32\u0e23\u0e4c\u0e14 2 \u0e0b\u0e34\u0e21\u0e44\u0e21\u0e48\u0e21\u0e35\u0e44\u0e21\u0e48\u0e44\u0e14\u0e49\u0e23\u0e31\u0e1a\u0e01\u0e32\u0e23\u0e2a\u0e19\u0e31\u0e1a\u0e2a\u0e19\u0e38\u0e19\u0e1b\u0e23\u0e30\u0e40\u0e20\u0e17\u0e1a\u0e31\u0e15\u0e23. 3. \u0e1c\u0e39\u0e49\u0e43\u0e2b\u0e49\u0e1a\u0e23\u0e34\u0e01\u0e32\u0e23\u0e44\u0e21\u0e48\u0e2a\u0e19\u0e31\u0e1a\u0e2a\u0e19\u0e38\u0e19\u0e0b\u0e34\u0e21\u0e01\u0e32\u0e23\u0e4c\u0e14"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:404)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:405)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:406)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:407)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e01\u0e32\u0e23\u0e0b\u0e37\u0e49\u0e2d\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27(500) \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e43\u0e19\u0e20\u0e32\u0e22\u0e2b\u0e25\u0e31\u0e07 \u0e2b\u0e23\u0e37\u0e2d\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(501)\u0e40\u0e04\u0e23\u0e37\u0e2d\u0e02\u0e48\u0e32\u0e22\u0e02\u0e49\u0e2d\u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14\u0e42\u0e1b\u0e23\u0e14\u0e15\u0e23\u0e27\u0e08\u0e2a\u0e2d\u0e1a\u0e15\u0e31\u0e49\u0e07\u0e04\u0e48\u0e32\u0e40\u0e04\u0e23\u0e37\u0e2d\u0e02\u0e48\u0e32\u0e22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e01\u0e32\u0e23\u0e0b\u0e37\u0e49\u0e2d\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27(502) \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e43\u0e19\u0e20\u0e32\u0e22\u0e2b\u0e25\u0e31\u0e07 \u0e2b\u0e23\u0e37\u0e2d\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(503)\u0e1c\u0e39\u0e49\u0e43\u0e0a\u0e49\u0e1a\u0e23\u0e34\u0e01\u0e32\u0e23\u0e08\u0e30\u0e44\u0e21\u0e48\u0e44\u0e14\u0e49\u0e23\u0e31\u0e1a\u0e2d\u0e19\u0e38\u0e0d\u0e32\u0e15\u0e43\u0e19\u0e01\u0e32\u0e23\u0e40\u0e02\u0e49\u0e32\u0e16\u0e36\u0e07\u0e40\u0e04\u0e23\u0e37\u0e2d\u0e02\u0e48\u0e32\u0e22\u0e2a\u0e19\u0e31\u0e1a\u0e2a\u0e19\u0e38\u0e19\u0e40\u0e09\u0e1e\u0e32\u0e30\u0e01\u0e32\u0e23\u0e40\u0e23\u0e35\u0e22\u0e01\u0e40\u0e01\u0e47\u0e1a\u0e40\u0e07\u0e34\u0e19\u0e40\u0e04\u0e23\u0e37\u0e2d\u0e02\u0e48\u0e32\u0e22\u0e44\u0e23\u0e49\u0e2a\u0e32\u0e22\u0e44\u0e21\u0e48\u0e2a\u0e19\u0e31\u0e1a\u0e2a\u0e19\u0e38\u0e19\u0e44\u0e23\u0e49\u0e2a\u0e32\u0e22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e27\u0e31\u0e19\u0e19\u0e35\u0e49\u0e04\u0e38\u0e13\u0e40\u0e15\u0e34\u0e21\u0e40\u0e07\u0e34\u0e19\u0e16\u0e36\u0e07\u0e08\u0e33\u0e19\u0e27\u0e19\u0e17\u0e35\u0e48\u0e01\u0e33\u0e2b\u0e19\u0e14\u0e41\u0e25\u0e49\u0e27 \u0e01\u0e23\u0e38\u0e13\u0e32\u0e40\u0e15\u0e34\u0e21\u0e43\u0e2b\u0e21\u0e48\u0e27\u0e31\u0e19\u0e1e\u0e23\u0e38\u0e48\u0e07\u0e19\u0e35\u0e49\u0e04\u0e48\u0e30 \u0e1e\u0e1a\u0e1b\u0e31\u0e0d\u0e2b\u0e32\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e40\u0e14\u0e37\u0e2d\u0e19\u0e19\u0e35\u0e49\u0e04\u0e38\u0e13\u0e40\u0e15\u0e34\u0e21\u0e40\u0e07\u0e34\u0e19\u0e04\u0e23\u0e1a\u0e08\u0e33\u0e19\u0e27\u0e19\u0e17\u0e35\u0e48\u0e01\u0e33\u0e2b\u0e19\u0e14\u0e41\u0e25\u0e49\u0e27 \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e43\u0e19\u0e40\u0e14\u0e37\u0e2d\u0e19\u0e16\u0e31\u0e14\u0e44\u0e1b\u0e04\u0e48\u0e30 \u0e1e\u0e1a\u0e1b\u0e31\u0e0d\u0e2b\u0e32\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e04\u0e38\u0e13\u0e16\u0e39\u0e01 Block list \u0e01\u0e23\u0e38\u0e13\u0e32\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d\u0e17\u0e35\u0e48 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e04\u0e38\u0e13\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d\u0e01\u0e31\u0e19\u0e40\u0e01\u0e34\u0e19\u0e44\u0e1b \u0e01\u0e23\u0e38\u0e13\u0e32\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23\u0e43\u0e2b\u0e21\u0e48\u0e43\u0e19\u0e2d\u0e35\u0e01\u0e2a\u0e31\u0e01\u0e04\u0e23\u0e39\u0e48\u0e04\u0e48\u0e30"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PIN \u0e17\u0e35\u0e48\u0e43\u0e2a\u0e48\u0e1c\u0e34\u0e14 \u0e2b\u0e23\u0e37\u0e2d\u0e16\u0e39\u0e01\u0e43\u0e0a\u0e49\u0e44\u0e1b\u0e41\u0e25\u0e49\u0e27"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22 \u0e23\u0e2b\u0e31\u0e2aPIN code \u0e44\u0e21\u0e48\u0e16\u0e39\u0e01\u0e15\u0e49\u0e2d\u0e07 \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PIN \u0e17\u0e35\u0e48\u0e43\u0e2a\u0e48\u0e19\u0e35\u0e49\u0e2b\u0e21\u0e14\u0e2d\u0e32\u0e22\u0e38\u0e41\u0e25\u0e49\u0e27"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e04\u0e38\u0e13\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23\u0e44\u0e21\u0e48\u0e16\u0e39\u0e01\u0e15\u0e49\u0e2d\u0e07 \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e2d\u0e35\u0e01\u0e04\u0e23\u0e31\u0e49\u0e07"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e01\u0e32\u0e23\u0e0b\u0e37\u0e49\u0e2d\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27(600) \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e43\u0e19\u0e20\u0e32\u0e22\u0e2b\u0e25\u0e31\u0e07 \u0e2b\u0e23\u0e37\u0e2d\u0e15\u0e34\u0e15\u0e48\u0e2d 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e40\u0e07\u0e34\u0e19\u0e04\u0e07\u0e40\u0e2b\u0e25\u0e37\u0e2d\u0e44\u0e21\u0e48\u0e1e\u0e2d \u0e01\u0e23\u0e38\u0e13\u0e32\u0e40\u0e15\u0e34\u0e21\u0e40\u0e07\u0e34\u0e19\u0e41\u0e25\u0e49\u0e27\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e2d\u0e35\u0e01\u0e04\u0e23\u0e31\u0e49\u0e07"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e01\u0e32\u0e23\u0e0b\u0e37\u0e49\u0e2d\u0e02\u0e2d\u0e07\u0e04\u0e38\u0e13\u0e17\u0e32\u0e07\u0e40\u0e04\u0e23\u0e37\u0e2d\u0e02\u0e48\u0e32\u0e22\u0e1a\u0e23\u0e34\u0e01\u0e32\u0e23\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27 \u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d 02-0330090"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(603)\u0e22\u0e01\u0e40\u0e25\u0e34\u0e01\u0e01\u0e32\u0e23\u0e0a\u0e33\u0e23\u0e30\u0e40\u0e07\u0e34\u0e19"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:605)Charging Failed (605), Please try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:606)There is not advertising for a moment,Please try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:607)There is not advertising for a moment,Please try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:608)There is not advertising for a moment\uff0cPlease try again later, or contact 02-0330090."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->G:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u0e2a\u0e33\u0e2b\u0e23\u0e31\u0e1a\u0e23\u0e32\u0e04\u0e32 200\u0e1a\u0e32\u0e17\u0e02\u0e36\u0e49\u0e19\u0e44\u0e1b\u0e40\u0e17\u0e48\u0e32\u0e19\u0e31\u0e49\u0e19"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(unknown error)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Thanh toan thanh cong"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "request has send,please wait"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:203)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Thanh toan khong thanh cong (400), vui long thu lai hoac lien he so 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Thanh toan khong thanh cong (401), vui long thu lai hoac lien he so 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:402)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(403)1. Ng\u01b0\u1eddi s\u1eed d\u1ee5ng kh\u00f4ng c\u00f3 th\u1ebb SIM 2. Non-SIM h\u1ed7 tr\u1ee3 lo\u1ea1i th\u1ebb. 3. C\u00e1c h\u00e3ng kh\u00f4ng h\u1ed7 tr\u1ee3 th\u1ebb SIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:404)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:405)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:406)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "(error:407)Charging Failed, Please try again later, or contact 02-0330090."

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Thanh toan khong thanh cong (500), vui long thu lai hoac lien he so 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(501)L\u1ed7i m\u1ea1ng, h\u00e3y ki\u1ec3m tra c\u00e1c thi\u1ebft l\u1eadp m\u1ea1ng"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Thanh toan khong thanh cong (502), vui long thu lai hoac lien he so 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:503)Ng\u01b0\u1eddi d\u00f9ng kh\u00f4ng \u0111\u01b0\u1ee3c ph\u00e9p truy c\u1eadp v\u00e0o m\u1ea1ng ch\u1ec9 h\u1ed7 tr\u1ee3 thanh to\u00e1n m\u1ea1ng kh\u00f4ng d\u00e2y, kh\u00f4ng h\u1ed7 tr\u1ee3 wifi."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Xin loi, ban da nap tien cho tro choi nay qua han muc trong mot ngay, vui long thu lai vao ngay mai. Neu co thac mac, vui long lien he so 0466660628. "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->q:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Xin loi, ban da nap tien cho tro choi nay qua han muc trong mot thang, vui long thu lai vao ngay mai. Neu co thac mac, vui long lien he so 0466660628. "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Xin loi, ban nam trong danh sach bi khoa, vui long lien he 0466660628 neu can."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Xin loi, ban khong the thanh toan lien tuc trong 60 gay, vui long thu lai sau."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Ma PIN ban nhap khong hop le hoac da duoc su dung"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Xin loi, ma PIN khong hop le, vui long kiem tra va thu lai."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Ma PIN ban nhap da het han"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Xin loi, dau vao loi, vui long thu lai sau."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(600)Thanh toan khong thanh cong , vui long thu lai hoac lien he so 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Xin loi, tai khoan cua ban khong du, vui long nap tien va thu lai."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Xin loi, trang thai tai khoan cua ban khong binh thuong, vui long lien he so 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->A:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(603)H\u1ee7y b\u1ecf thanh to\u00e1n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->C:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:605)Charging Failed , Please try again later, or contact 02-6456436."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->D:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:606)There is not advertising for a moment,Please try again later, or contact 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->E:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:607)There is not advertising for a moment,Please try again later, or contact 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    sget v1, Lcom/bluepay/data/e;->F:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(error:608)There is not advertising for a moment\uff0cPlease try again later, or contact 0466660628."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "message index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->getLocalLan()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/bluepay/data/e;->I:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/bluepay/data/e;->K:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "vn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/bluepay/data/e;->J:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/bluepay/data/e;->H:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
