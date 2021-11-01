.class public final enum Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;
.super Ljava/lang/Enum;
.source "KunlunSNSErrorCodeEnum.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/IErrorCodeEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;",
        ">;",
        "Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/IErrorCodeEnum;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Client_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Client_GraphAPIFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Client_ProgrammingError:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Client_RespondBeanClassCastEception:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Client_TimeOut:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_HTTP_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_HTTP_NotFound:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Init_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_NONE:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Server_Custom_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Server_DataExchangeProtocolMismatch:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Server_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Server_NoResponseData:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Server_ParseNetRespondStringToDomainBeanFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

.field public static final enum kErrorCodeEnum_Success:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Init_Error"

    .line 13
    const/16 v2, -0x64

    const-string v3, "SDK\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Init_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 14
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_NONE"

    .line 15
    const/16 v2, -0x7de

    const-string v3, "\u65e0\u6548\u9519\u8bef\u7801"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_NONE:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 17
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Success"

    .line 18
    const/16 v2, 0xc8

    const-string v3, "\u8bf7\u6c42\u6210\u529f"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Success:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 20
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_HTTP_Error"

    .line 23
    const/16 v2, 0x12c

    const-string v3, "HTTP\u9519\u8bef"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_HTTP_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 24
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_HTTP_NotFound"

    .line 25
    const/16 v2, 0x194

    const-string v3, "\u627e\u4e0d\u5230 \u2014 \u670d\u52a1\u5668\u627e\u4e0d\u5230\u7ed9\u5b9a\u7684\u8d44\u6e90\uff1b\u6587\u6863\u4e0d\u5b58\u5728\u3002"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_HTTP_NotFound:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 27
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Client_Error"

    const/4 v2, 0x5

    .line 30
    const/16 v3, 0x3e8

    const-string v4, "\u5ba2\u6237\u7aef\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 31
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Client_ProgrammingError"

    const/4 v2, 0x6

    .line 32
    const/16 v3, 0x3e9

    const-string v4, "\u5ba2\u6237\u7aef\u7f16\u7a0b\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_ProgrammingError:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 34
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Client_TimeOut"

    const/4 v2, 0x7

    const/16 v3, 0x3ea

    const-string v4, "\u5ba2\u6237\u7aef\u8bbe\u5907\u8054\u7f51\u8d85\u65f6"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_TimeOut:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 36
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Client_RespondBeanClassCastEception"

    const/16 v2, 0x8

    const/16 v3, 0x3eb

    const-string v4, "\u5f53\u524dSDK\u6307\u4ee4\u8bf7\u6c42\u7684ResquestBean\u4e0eRespondBean\u4e0d\u5c5e\u4e8e\u540c\u4e00\u4e1a\u52a1\u6a21\u5757."

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_RespondBeanClassCastEception:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 37
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Client_GraphAPIFailed"

    const/16 v2, 0x9

    .line 38
    const/16 v3, 0x3ec

    const-string v4, "GraphAPI\u8bf7\u6c42\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_GraphAPIFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 43
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Server_Error"

    const/16 v2, 0xa

    const/16 v3, 0x7d0

    const-string v4, "\u670d\u52a1\u5668\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 45
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Server_NoResponseData"

    const/16 v2, 0xb

    .line 47
    const/16 v3, 0x7d1

    const-string v4, "\u4ece\u670d\u52a1\u5668\u7aef\u83b7\u5f97\u7684\u5b9e\u4f53\u6570\u636e\u4e3a\u7a7a(EntityData)"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_NoResponseData:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 48
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Server_UnpackedResponseDataFailed"

    const/16 v2, 0xc

    .line 50
    const/16 v3, 0x7d2

    const-string v4, "\u89e3\u6790\u670d\u52a1\u5668\u7aef\u8fd4\u56de\u7684\u5b9e\u4f53\u6570\u636e\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 51
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Server_DataExchangeProtocolMismatch"

    const/16 v2, 0xd

    .line 52
    const/16 v3, 0x7d3

    const-string v4, "\u5ba2\u6237\u7aef\u548c\u670d\u52a1\u5668\u7aef, \u6570\u636e\u4ea4\u6362\u534f\u8bae\u4e0d\u5339\u914d(\u6bd4\u5982\u8bf4XML\u6362\u6210\u4e86JSON"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_DataExchangeProtocolMismatch:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 53
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Server_ParseNetRespondStringToDomainBeanFailed"

    const/16 v2, 0xe

    .line 54
    const/16 v3, 0x7d4

    const-string v4, "\u5c06\u7f51\u7edc\u8fd4\u56de\u7684\u6570\u636e\u5b57\u7b26\u4e32(JSON/XML)\u89e3\u6790\u6210\u4e1a\u52a1Bean\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_ParseNetRespondStringToDomainBeanFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 55
    new-instance v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    const-string v1, "kErrorCodeEnum_Server_Custom_Error"

    const/16 v2, 0xf

    .line 56
    const/4 v3, -0x1

    const-string v4, "\u548c\u670d\u52a1\u5668\u7ea6\u5b9a\u597d\u7684\u9519\u8bef\u7801, \u8054\u7f51\u6210\u529f, \u4f46\u662f\u670d\u52a1\u5668\u90a3\u8fb9\u53d1\u751f\u4e86\u9519\u8bef, \u670d\u52a1\u5668\u8981\u544a\u77e5\u5ba2\u6237\u7aef\u9519\u8bef\u7684\u8be6\u7ec6\u4fe1\u606f"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_Custom_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Init_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_NONE:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Success:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_HTTP_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_HTTP_NotFound:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_ProgrammingError:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_TimeOut:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_RespondBeanClassCastEception:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_GraphAPIFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_NoResponseData:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_UnpackedResponseDataFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_DataExchangeProtocolMismatch:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_ParseNetRespondStringToDomainBeanFailed:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Server_Custom_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->code:I

    .line 63
    iput-object p4, p0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->message:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->message:Ljava/lang/String;

    return-object v0
.end method

.method public valueOfCode(I)Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;
    .locals 5
    .param p1, "code"    # I

    .prologue
    .line 67
    invoke-static {}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->values()[Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 73
    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_HTTP_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v1

    if-le p1, v1, :cond_2

    sget-object v1, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_Client_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 74
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_HTTP_Error:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    .line 76
    :cond_0
    :goto_1
    return-object v0

    .line 67
    :cond_1
    aget-object v0, v2, v1

    .line 68
    .local v0, "item":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;
    invoke-virtual {v0}, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->getCode()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "item":Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;
    :cond_2
    sget-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;->kErrorCodeEnum_NONE:Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorCodeEnum;

    goto :goto_1
.end method
