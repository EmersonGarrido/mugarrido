.class public Lcom/bluepay/data/Config;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluepay/data/Config$a;
    }
.end annotation


# static fields
.field public static final ACTION_LINE:Ljava/lang/String; = "com.bluepay.line"

.field public static AD_ACCESS_OUT:I = 0x0

.field public static AD_DATA_ERROR:I = 0x0

.field public static AD_ENCRY_ERROR:I = 0x0

.field public static final AD_GET_CONFIRM:I = 0x35

.field public static AD_LIMIT:I = 0x0

.field public static AD_PARAS_ERROR:I = 0x0

.field public static AD_REPEAT_CONFIRM:I = 0x0

.field public static final COUNTRY_CN:Ljava/lang/String; = "CN"

.field public static final COUNTRY_ID:Ljava/lang/String; = "ID"

.field public static final COUNTRY_TH:Ljava/lang/String; = "TH"

.field public static final COUNTRY_VN:Ljava/lang/String; = "VN"

.field public static final ERROR_C_BluePay_IMSI:Ljava/lang/String; = "0000000000"

.field public static final ERROR_C_BluePay_KEY:Ljava/lang/String; = ""

.field public static final ERROR_C_BluePay_LAN:Ljava/lang/String; = "en"

.field public static final ERROR_C_BluePay_Price:Ljava/lang/String; = "0"

.field public static final ERROR_C_BluePay_ProductID:I = 0x0

.field public static final ERROR_C_BluePay_PromotionID:Ljava/lang/String;

.field public static final EXTRA_AD_INFO:Ljava/lang/String; = "offer_info"

.field public static final EXTRA_AD_TID:Ljava/lang/String; = "bt_id"

.field public static final EXTRA_LINE_URL:Ljava/lang/String; = "line_pay_url"

.field public static final EXTRA_URL:Ljava/lang/String; = "BluelURL"

.field public static final GET_URL:I = 0xc

.field public static final GET_URL_ERROR:I = 0xd

.field public static final K_BUY_MODE:Ljava/lang/String; = "BuyMode"

.field public static final K_CURRENCY_ID:Ljava/lang/String; = "ID"

.field public static final K_CURRENCY_PRE:Ljava/lang/String; = "t"

.field public static final K_CURRENCY_THB:Ljava/lang/String; = "THB"

.field public static final K_CURRENCY_TRF:Ljava/lang/String; = "TRF"

.field public static final K_CURRENCY_VND:Ljava/lang/String; = "VND"

.field public static final K_GAME_CURRENCY_ID:Ljava/lang/String; = "CurrencyID"

.field public static final K_GAME_CUSTOMID:Ljava/lang/String; = "CustomID"

.field public static final K_GAME_T_ID:Ljava/lang/String; = "TransactionID"

.field public static final K_GOODS_NAME:Ljava/lang/String; = "Goods"

.field public static final K_IS_CLOSE_WINDOW:Ljava/lang/String; = "CloseWindow"

.field public static final K_MSG_HANDLE:Ljava/lang/String; = "Handler"

.field public static final K_MSG_WHAT:Ljava/lang/String; = "What"

.field public static final K_PRICE:Ljava/lang/String; = "Price"

.field public static final LAN_ID1:Ljava/lang/String; = "id"

.field public static final LAN_ID2:Ljava/lang/String; = "id-ID"

.field public static final LAN_ID3:Ljava/lang/String; = "in"

.field public static final LAN_TH1:Ljava/lang/String; = "th"

.field public static final LAN_TH2:Ljava/lang/String; = "th_TH"

.field public static final LAN_VN1:Ljava/lang/String; = "vi-VN"

.field public static final LAN_VN2:Ljava/lang/String; = "vi"

.field public static final MOBILE_PHONE_CARD:B = 0x5t

.field public static final MOBILE_PHONE_KNOWN:B = 0x6t

.field public static MOBILE_PHONE_TYPE:B = 0x0t

.field public static final NETWORKTYPE_2G:Ljava/lang/String; = "2G"

.field public static final NETWORKTYPE_3G:Ljava/lang/String; = "3G"

.field public static final NETWORKTYPE_INVALID:Ljava/lang/String; = "unknow"

.field public static final NETWORKTYPE_WAP:Ljava/lang/String; = "wap"

.field public static final NETWORKTYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final OPERATOR_AIS:I = 0x2

.field public static final OPERATOR_BANK:I = 0x15

.field public static final OPERATOR_CARD:I = 0x4

.field public static final OPERATOR_DTAC:I = 0x3

.field public static final OPERATOR_HUAWEI:I = 0x1b

.field public static final OPERATOR_TDP:I = 0x1

.field public static final OPERATOR_TELENOR:I = 0x14

.field public static final OPERATOR_TEST:I = 0x9

.field public static final OPERATOR_UNKNOWN:I = 0x0

.field public static final ORDER_CASHCARD:I = 0x3

.field public static final ORDER_DCB:I = 0x5

.field public static final ORDER_DISMANTLE_SMS:I = 0x4

.field public static final ORDER_HW:I = 0x8

.field public static final ORDER_OFFLINE:I = 0x7

.field public static final ORDER_SMS:I = 0x0

.field public static final ORDER_WALLET:I = 0x6

.field public static final PAY_AOC:I = 0x1

.field public static final PAY_BANK:I = 0x8

.field public static final PAY_CARD:I = 0x5

.field public static final PAY_CREATETRANSACTION:I = 0xb

.field public static final PAY_DCB:I = 0x6

.field public static final PAY_OFFLINE:I = 0x9

.field public static final PAY_OTP:I = 0x2

.field public static final PAY_STANDARD:I = 0x0

.field public static final PAY_STEPS_ACTIVE:I = 0x4

.field public static final PAY_STEPS_PASSIVE:I = 0x3

.field public static final PAY_WALLET:I = 0x7

.field public static final PHONE_TYPE:Ljava/lang/String;

.field public static PhoneType:I = 0x0

.field public static final PhoneType_MTK:I = 0x0

.field public static final PhoneType_SP1:I = 0x1

.field public static final PhoneType_SPEXLA:I = 0x2

.field public static final ROM_VERSION:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field public static final SDK_LEVE:Ljava/lang/String;

.field public static final SERVER_ERROR:I = 0x1f4

.field public static final SERVER_SUCCESS:I = 0xc8

.field public static SERVICE_BACK:Ljava/lang/String; = null

.field public static final SHOW_CREATE_TRANSACTION:I = 0x6

.field public static final SHOW_FINAL_RESULT:I = 0xe

.field public static final SHOW_LOGIC:I = 0x5

.field public static final SHOW_SEND_CHECK_SAFE:I = 0x0

.field public static final SHOW_SMS_SEND_FINISH:I = 0x2

.field public static final SHOW_SMS_SEND_SUCCESS:I = 0x3

.field public static final SHOW_STEP_CHECK_BILLING:I = 0x1

.field public static final SMS_ERROR:Ljava/lang/String; = "404"

.field public static final SMS_NO_MONEY:Ljava/lang/String; = "601"

.field public static final SMS_STATE_OK:Ljava/lang/String; = "200"

.field public static final SMS_STATE_SENDING:Ljava/lang/String; = "201"

.field public static final SMS_STEPS_FAILED:Ljava/lang/String; = "605"

.field public static final TELCO_NAME_INDOSAT:Ljava/lang/String; = "indosat"

.field public static final TELCO_NAME_TELKOMSEL:Ljava/lang/String; = "telkomsel"

.field public static final TELCO_NAME_XL:Ljava/lang/String; = "xl"

.field public static final VERSION:I = 0x5f66da4

.field private static a:Z = false

.field private static final b:Ljava/lang/String; = "api.bluepay.asia"

.field private static final c:I = 0x270f

.field private static final d:Ljava/lang/String; = "api.bluepay.asia"

.field private static final e:I = 0x50

.field private static final f:Ljava/lang/String; = "http://asik.indosat.com/v1/baidu.jsp"

.field private static g:Z

.field private static h:Lcom/bluepay/data/Config$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/bluepay/data/Config;->ERROR_C_BluePay_PromotionID:Ljava/lang/String;

    const/4 v0, 0x5

    sput-byte v0, Lcom/bluepay/data/Config;->MOBILE_PHONE_TYPE:B

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/bluepay/data/Config;->SDK_LEVE:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/bluepay/data/Config;->PHONE_TYPE:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/bluepay/data/Config;->ROM_VERSION:Ljava/lang/String;

    sput-boolean v1, Lcom/bluepay/data/Config;->a:Z

    const/16 v0, 0x190

    sput v0, Lcom/bluepay/data/Config;->AD_PARAS_ERROR:I

    const/16 v0, 0x191

    sput v0, Lcom/bluepay/data/Config;->AD_ENCRY_ERROR:I

    const/16 v0, 0x194

    sput v0, Lcom/bluepay/data/Config;->AD_DATA_ERROR:I

    const/16 v0, 0x25e

    sput v0, Lcom/bluepay/data/Config;->AD_REPEAT_CONFIRM:I

    const/16 v0, 0x25f

    sput v0, Lcom/bluepay/data/Config;->AD_ACCESS_OUT:I

    const/16 v0, 0x260

    sput v0, Lcom/bluepay/data/Config;->AD_LIMIT:I

    const-string v0, "com.bluepay.service.BackService"

    sput-object v0, Lcom/bluepay/data/Config;->SERVICE_BACK:Ljava/lang/String;

    sput-boolean v1, Lcom/bluepay/data/Config;->g:Z

    sget-object v0, Lcom/bluepay/data/Config$a;->b:Lcom/bluepay/data/Config$a;

    sput-object v0, Lcom/bluepay/data/Config;->h:Lcom/bluepay/data/Config$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaiduExploreUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "http://asik.indosat.com/v1/baidu.jsp"

    return-object v0
.end method

.method public static getCacheIp()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/bluepay/data/Config;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "api.bluepay.asia"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "api.bluepay.asia"

    goto :goto_0
.end method

.method public static getIp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/bluepay/data/Config;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "api.bluepay.asia"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "api.bluepay.asia"

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPort()I
    .locals 1

    sget-boolean v0, Lcom/bluepay/data/Config;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x270f

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x50

    goto :goto_0
.end method

.method public static isAddressDebug()Z
    .locals 1

    sget-boolean v0, Lcom/bluepay/data/Config;->a:Z

    return v0
.end method

.method public static isAisVersionDcb()Z
    .locals 2

    sget-object v0, Lcom/bluepay/data/Config;->h:Lcom/bluepay/data/Config$a;

    sget-object v1, Lcom/bluepay/data/Config$a;->a:Lcom/bluepay/data/Config$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAisVersionSms()Z
    .locals 2

    sget-object v0, Lcom/bluepay/data/Config;->h:Lcom/bluepay/data/Config$a;

    sget-object v1, Lcom/bluepay/data/Config$a;->b:Lcom/bluepay/data/Config$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/bluepay/data/Config;->g:Z

    return v0
.end method

.method public static setAddressDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/bluepay/data/Config;->a:Z

    return-void
.end method

.method public static setAisVersionToDcb()V
    .locals 1

    sget-object v0, Lcom/bluepay/data/Config$a;->a:Lcom/bluepay/data/Config$a;

    sput-object v0, Lcom/bluepay/data/Config;->h:Lcom/bluepay/data/Config$a;

    return-void
.end method

.method public static setAisVersionToSms()V
    .locals 1

    sget-object v0, Lcom/bluepay/data/Config$a;->b:Lcom/bluepay/data/Config$a;

    sput-object v0, Lcom/bluepay/data/Config;->h:Lcom/bluepay/data/Config$a;

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/bluepay/data/Config;->g:Z

    return-void
.end method
