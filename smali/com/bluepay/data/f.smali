.class public Lcom/bluepay/data/f;
.super Ljava/lang/Object;


# static fields
.field public static final A:B = 0x1at

.field public static final B:B = 0x1bt

.field public static final C:B = 0x1ct

.field public static final D:B = 0x1dt

.field public static final E:B = 0x1et

.field public static final F:B = 0x1ft

.field public static final G:B = 0x20t

.field public static final H:B = 0x21t

.field public static final I:B = 0x22t

.field public static final J:B = 0x23t

.field public static final K:B = 0x24t

.field public static final L:B = 0x25t

.field public static final M:B = 0x26t

.field public static final N:B = 0x27t

.field public static final O:B = 0x28t

.field public static final P:B = 0x29t

.field public static final Q:B = 0x2at

.field public static final R:B = 0x2bt

.field public static final S:B = 0x2ct

.field public static final T:B = 0x2dt

.field public static final U:B = 0x2et

.field public static final V:B = 0x2ft

.field public static final W:B = 0x30t

.field public static final X:B = 0x31t

.field public static final Y:B = 0x32t

.field public static final Z:B = 0x33t

.field public static final a:B = 0x0t

.field public static final aa:B = 0x34t

.field public static final ab:B = 0x35t

.field public static final ac:B = 0x36t

.field public static final ad:B = 0x37t

.field public static final ae:B = 0x38t

.field public static final af:B = 0x39t

.field public static final ag:[[Ljava/lang/String;

.field public static final b:B = 0x1t

.field public static final c:B = 0x2t

.field public static final d:B = 0x3t

.field public static final e:B = 0x4t

.field public static final f:B = 0x5t

.field public static final g:B = 0x6t

.field public static final h:B = 0x7t

.field public static final i:B = 0x8t

.field public static final j:B = 0x9t

.field public static final k:B = 0xat

.field public static final l:B = 0xbt

.field public static final m:B = 0xct

.field public static final n:B = 0xdt

.field public static final o:B = 0xet

.field public static final p:B = 0xft

.field public static final q:B = 0x10t

.field public static final r:B = 0x11t

.field public static final s:B = 0x12t

.field public static final t:B = 0x13t

.field public static final u:B = 0x14t

.field public static final v:B = 0x15t

.field public static final w:B = 0x16t

.field public static final x:B = 0x17t

.field public static final y:B = 0x18t

.field public static final z:B = 0x19t


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v8, [[Ljava/lang/String;

    const/16 v1, 0x3a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "OK"

    aput-object v2, v1, v4

    const-string v2, "Cancel"

    aput-object v2, v1, v5

    const-string v2, "For example : 66123456789"

    aput-object v2, v1, v6

    const-string v2, "Please enter a number."

    aput-object v2, v1, v7

    const-string v2, "Please enter the code received from the text."

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "Format sample to enter the code: 1234."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Loading..."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "please input your card number"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "CardNo cannot be empty"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Card number"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Send request 0%"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Send request 50%"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Request is sent successfully, please wait for the results"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "send error!"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "sent Success! "

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "sent Failed!"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "sdk has not init"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "{}"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Success"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "NOT GOOG RESPONSE"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Please check net state"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "Message sent OK!"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "request sent"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "message sent fail"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "return params not right"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "User Cancel"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "unsupported operator"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "get AIS generator key error"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "protocol error: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "io error: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "UnsupportedEncodingException: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "ParseException : {}"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "handler, payListener or Activity should not be null"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "the CardNo is error"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "Please Input your Card No."

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "the price list of .ref file is error !  (isShowDialog=true, price = 0) is Ok?"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "The cost will be charged to your mobile phone bill"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "do not have enough money"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "Do you want to buy the goods, Please select your payment ?"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "SIM is Error "

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "Charging Failed, Please try again later, or contact 02-6456436."

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "There is no ad for a moment, Please try again later, or contact 02-6456436."

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "Repeat confirm"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "Pelease check card NO. and Serial NO."

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "Please try it several minutes later"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "Parameter error,please contack to  customer service"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "Try again"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "Tis payment may send a meesage in first time."

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "Would you like to pay this?"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "Length of card number does not match 8 or 16 bit"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "you need to go to BANK or ATM device to finished this payment."

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "For OTC min 50000 max 4000000. For ATM, min 50000 max 3000000."

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "Please instal LINE and LINEPay then try again"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "here is your Trading code,please finish this payment in time"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "Please go to ATM  to complete this payment."

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "Please go to Bank to complete this payment"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "phone number cannot be empty"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "Please reply the confirmation code after you receive the telco message"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0x3a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0e15\u0e01\u0e25\u0e07"

    aput-object v2, v1, v4

    const-string v2, "\u0e22\u0e01\u0e40\u0e25\u0e34\u0e01"

    aput-object v2, v1, v5

    const-string v2, "\u0e15\u0e31\u0e27\u0e2d\u0e22\u0e48\u0e32\u0e07\u0e40\u0e0a\u0e48\u0e19 : 66123456789"

    aput-object v2, v1, v6

    const-string v2, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e43\u0e2a\u0e48\u0e40\u0e1a\u0e2d\u0e23\u0e4c\u0e42\u0e17\u0e23\u0e28\u0e31\u0e1e\u0e17\u0e4c"

    aput-object v2, v1, v7

    const-string v2, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e43\u0e2a\u0e48\u0e23\u0e2b\u0e31\u0e2a\u0e17\u0e35\u0e48\u0e44\u0e14\u0e49\u0e23\u0e31\u0e1a\u0e08\u0e32\u0e01\u0e02\u0e49\u0e2d\u0e04\u0e27\u0e32\u0e21"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u0e15\u0e31\u0e27\u0e2d\u0e22\u0e48\u0e32\u0e07\u0e23\u0e39\u0e1b\u0e41\u0e1a\u0e1a\u0e01\u0e32\u0e23\u0e43\u0e2a\u0e48\u0e23\u0e2b\u0e31\u0e2a : 1234"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u0e01\u0e33\u0e25\u0e31\u0e07\u0e42\u0e2b\u0e25\u0e14"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e43\u0e2a\u0e48\u0e40\u0e25\u0e02\u0e1a\u0e31\u0e15\u0e23"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "\u0e40\u0e25\u0e02\u0e1a\u0e31\u0e15\u0e23\u0e40\u0e27\u0e49\u0e19\u0e27\u0e48\u0e32\u0e07\u0e44\u0e21\u0e48\u0e44\u0e14\u0e49"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "\u0e40\u0e25\u0e02\u0e1a\u0e31\u0e15\u0e23"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "\u0e01\u0e33\u0e25\u0e31\u0e07\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23 0%"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "\u0e01\u0e33\u0e25\u0e31\u0e07\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23 50%"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23\u0e2a\u0e33\u0e40\u0e23\u0e47\u0e08 \u0e01\u0e23\u0e38\u0e13\u0e32\u0e23\u0e2d\u0e1c\u0e25\u0e15\u0e2d\u0e1a\u0e01\u0e25\u0e31\u0e1a"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "\u0e2a\u0e48\u0e07\u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14!"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "\u0e2a\u0e33\u0e40\u0e23\u0e47\u0e08! "

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27!"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "sdk \u0e44\u0e21\u0e48init"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "{}"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "\u0e2a\u0e33\u0e40\u0e23\u0e47\u0e08"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "\u0e15\u0e2d\u0e1a\u0e01\u0e25\u0e31\u0e1a\u0e44\u0e21\u0e48\u0e14\u0e35"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e15\u0e23\u0e27\u0e08\u0e2a\u0e2d\u0e1a\u0e2d\u0e34\u0e19\u0e40\u0e17\u0e2d\u0e23\u0e4c\u0e40\u0e19\u0e47\u0e15"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "\u0e2a\u0e48\u0e07\u0e02\u0e49\u0e2d\u0e21\u0e39\u0e25\u0e41\u0e25\u0e49\u0e27"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "\u0e2a\u0e48\u0e07\u0e04\u0e33\u0e02\u0e2d\u0e41\u0e25\u0e49\u0e27"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "\u0e2a\u0e48\u0e07\u0e02\u0e49\u0e2d\u0e04\u0e27\u0e32\u0e21\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "\u0e15\u0e31\u0e27\u0e41\u0e1b\u0e25\u0e15\u0e2d\u0e1a\u0e01\u0e25\u0e31\u0e1a\u0e44\u0e21\u0e48\u0e16\u0e39\u0e01\u0e15\u0e49\u0e2d\u0e07"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "\u0e22\u0e01\u0e40\u0e25\u0e34\u0e01\u0e42\u0e14\u0e22\u0e1c\u0e39\u0e49\u0e43\u0e0a\u0e49"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "\u0e44\u0e21\u0e48\u0e23\u0e2d\u0e07\u0e23\u0e31\u0e1a\u0e1c\u0e39\u0e49\u0e43\u0e2b\u0e49\u0e1a\u0e23\u0e34\u0e01\u0e32\u0e23\u0e19\u0e35\u0e49"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "AIS\u0e2a\u0e23\u0e49\u0e32\u0e07\u0e23\u0e2b\u0e31\u0e2a\u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "\u0e42\u0e1b\u0e23\u0e42\u0e15\u0e04\u0e2d\u0e25\u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "io \u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "\u0e44\u0e21\u0e48\u0e23\u0e2d\u0e07\u0e23\u0e31\u0e1a\u0e01\u0e32\u0e23\u0e41\u0e1b\u0e25\u0e07\u0e23\u0e2b\u0e31\u0e2a\u0e19\u0e35\u0e49: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "\u0e22\u0e01\u0e40\u0e27\u0e49\u0e19\u0e2a\u0e48\u0e27\u0e19\u0e19\u0e35 : {}"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "\u0e44\u0e21\u0e48\u0e04\u0e27\u0e23\u0e40\u0e27\u0e49\u0e19\u0e0a\u0e48\u0e2d\u0e07\u0e27\u0e48\u0e32\u0e07\u0e44\u0e27"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "\u0e40\u0e25\u0e02\u0e1a\u0e31\u0e15\u0e23\u0e1c\u0e34\u0e14 "

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e43\u0e2a\u0e48\u0e40\u0e25\u0e02\u0e1a\u0e31\u0e15\u0e23\u0e02\u0e2d\u0e07\u0e17\u0e48\u0e32\u0e19"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "\u0e23\u0e32\u0e22\u0e25\u0e30\u0e40\u0e2d\u0e35\u0e22\u0e14\u0e23\u0e32\u0e04\u0e32\u0e43\u0e19 .ref \u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14! (isShowDialog=true, price = 0) is Ok?"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "\u0e04\u0e48\u0e32\u0e43\u0e0a\u0e49\u0e08\u0e48\u0e32\u0e22\u0e08\u0e30\u0e23\u0e27\u0e21\u0e44\u0e1b\u0e43\u0e19\u0e43\u0e1a\u0e41\u0e08\u0e49\u0e07\u0e04\u0e48\u0e32\u0e1a\u0e23\u0e34\u0e01\u0e32\u0e23\u0e42\u0e17\u0e23\u0e28\u0e31\u0e1e\u0e17\u0e4c"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "\u0e40\u0e07\u0e34\u0e19\u0e43\u0e19\u0e1a\u0e31\u0e0d\u0e0a\u0e35\u0e44\u0e21\u0e48\u0e1e\u0e2d"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "\u0e15\u0e49\u0e2d\u0e07\u0e01\u0e32\u0e23\u0e0b\u0e37\u0e49\u0e2d\u0e02\u0e2d\u0e07 \u0e01\u0e23\u0e38\u0e13\u0e32\u0e40\u0e25\u0e37\u0e2d\u0e01\u0e0a\u0e48\u0e2d\u0e07\u0e17\u0e32\u0e07\u0e01\u0e32\u0e23\u0e0a\u0e33\u0e23\u0e30\u0e40\u0e07\u0e34\u0e19 ?"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "\u0e44\u0e21\u0e48\u0e21\u0e35\u0e0b\u0e34\u0e21\u0e01\u0e32\u0e23\u0e4c\u0e14\u0e2b\u0e23\u0e37\u0e2d\u0e0b\u0e34\u0e21\u0e01\u0e32\u0e23\u0e4c\u0e14\u0e21\u0e35\u0e1b\u0e31\u0e0d\u0e2b\u0e32"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "\u0e02\u0e2d\u0e2d\u0e20\u0e31\u0e22\u0e04\u0e48\u0e30 \u0e01\u0e32\u0e23\u0e0b\u0e37\u0e49\u0e2d\u0e25\u0e49\u0e21\u0e40\u0e2b\u0e25\u0e27  \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e43\u0e19\u0e20\u0e32\u0e22\u0e2b\u0e25\u0e31\u0e07 \u0e2b\u0e23\u0e37\u0e2d\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d 020330090"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "\u0e02\u0e13\u0e30\u0e19\u0e35\u0e49\u0e22\u0e31\u0e07\u0e44\u0e21\u0e48\u0e21\u0e35\u0e42\u0e06\u0e29\u0e13\u0e32, \u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e2d\u0e35\u0e01\u0e04\u0e23\u0e31\u0e49\u0e07, \u0e2b\u0e23\u0e37\u0e2d\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d 020330090."

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "\u0e01\u0e32\u0e23\u0e22\u0e37\u0e19\u0e22\u0e31\u0e19\u0e0b\u0e49\u0e33"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e15\u0e23\u0e27\u0e08\u0e2a\u0e2d\u0e1a Card No \u0e41\u0e25\u0e30 Serial No."

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e15\u0e23\u0e27\u0e08\u0e2a\u0e2d\u0e1a Card No \u0e41\u0e25\u0e30 Serial No."

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "\u0e1e\u0e32\u0e23\u0e32\u0e21\u0e34\u0e40\u0e15\u0e2d\u0e23\u0e4c \u0e1c\u0e34\u0e14\u0e1e\u0e25\u0e32\u0e14, \u0e01\u0e23\u0e38\u0e13\u0e32\u0e15\u0e34\u0e14\u0e15\u0e48\u0e2d\u0e41\u0e1c\u0e19\u0e01\u0e1a\u0e23\u0e34\u0e01\u0e32\u0e23\u0e25\u0e39\u0e01\u0e04\u0e49\u0e32,020330090"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "\u0e04\u0e38\u0e13\u0e08\u0e30\u0e44\u0e14\u0e49\u0e23\u0e31\u0e1a\u0e02\u0e49\u0e2d\u0e04\u0e27\u0e32\u0e21\u0e41\u0e08\u0e49\u0e07\u0e40\u0e15\u0e37\u0e2d\u0e19\u0e40\u0e21\u0e37\u0e48\u0e2d\u0e40\u0e15\u0e34\u0e21\u0e40\u0e07\u0e34\u0e19\u0e04\u0e23\u0e31\u0e49\u0e07\u0e41\u0e23\u0e01 "

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "\u0e04\u0e38\u0e13\u0e15\u0e49\u0e2d\u0e07\u0e01\u0e32\u0e23\u0e0a\u0e33\u0e23\u0e30\u0e40\u0e07\u0e34\u0e19\u0e2b\u0e23\u0e37\u0e2d\u0e44\u0e21\u0e48?"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "\u0e04\u0e27\u0e32\u0e21\u0e22\u0e32\u0e27\u0e02\u0e2d\u0e07\u0e40\u0e25\u0e02\u0e1a\u0e31\u0e15\u0e23\u0e44\u0e21\u0e48\u0e04\u0e23\u0e1a 8 \u0e2b\u0e23\u0e37\u0e2d 16 bit"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "you need to go to BANK or ATM device to complete this payment."

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "For OTC min 50000 max 4000000. For ATM, min 50000 max 3000000."

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e15\u0e34\u0e14\u0e15\u0e31\u0e49\u0e07 Line \u0e41\u0e25\u0e30 Linpay \u0e01\u0e48\u0e2d\u0e19\u0e25\u0e2d\u0e07\u0e43\u0e2b\u0e21\u0e48\u0e2d\u0e35\u0e01\u0e04\u0e23\u0e31\u0e49\u0e07"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "\u0e04\u0e38\u0e13\u0e08\u0e30\u0e44\u0e14\u0e49\u0e23\u0e31\u0e1a\u0e02\u0e49\u0e2d\u0e04\u0e27\u0e32\u0e21\u0e23\u0e30\u0e1a\u0e38 Trading Code, \u0e01\u0e23\u0e38\u0e13\u0e32\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23\u0e43\u0e2b\u0e49\u0e40\u0e2a\u0e23\u0e47\u0e08\u0e20\u0e32\u0e22\u0e43\u0e19\u0e40\u0e27\u0e25\u0e32."

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e44\u0e1b\u0e17\u0e35\u0e48\u0e15\u0e39\u0e49 ATM \u0e02\u0e2d\u0e07 BCA \u0e40\u0e1e\u0e37\u0e48\u0e2d\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23\u0e15\u0e48\u0e2d\u0e43\u0e2b\u0e49\u0e2a\u0e33\u0e40\u0e23\u0e47\u0e08."

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "\u0e01\u0e23\u0e38\u0e13\u0e32\u0e44\u0e1b\u0e17\u0e35\u0e48\u0e41\u0e1a\u0e07\u0e04\u0e4c \u0e2b\u0e23\u0e37\u0e2d 7-Eleven \u0e40\u0e1e\u0e37\u0e48\u0e2d\u0e17\u0e33\u0e23\u0e32\u0e22\u0e01\u0e32\u0e23\u0e15\u0e48\u0e2d\u0e43\u0e2b\u0e49\u0e2a\u0e33\u0e40\u0e23\u0e47\u0e08."

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "\u0e44\u0e21\u0e48\u0e2a\u0e32\u0e21\u0e32\u0e23\u0e16\u0e40\u0e27\u0e49\u0e19\u0e27\u0e48\u0e32\u0e07\u0e40\u0e1a\u0e2d\u0e23\u0e4c\u0e42\u0e17\u0e23\u0e28\u0e31\u0e1e\u0e17\u0e4c"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "Please reply the confirmation code after you receive the telco message"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x3a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "OK"

    aput-object v2, v1, v4

    const-string v2, "Batal"

    aput-object v2, v1, v5

    const-string v2, "Contohnya : 66123456789"

    aput-object v2, v1, v6

    const-string v2, "Tolong masukan nomer."

    aput-object v2, v1, v7

    const-string v2, "Mohon masukkan kode yang diterima dari SMS."

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "contoh format untuk memasukkan kode: 1234."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Memuat\u2026"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Tolong masukkan kode voucher anda"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "kode voucher tidak boleh kosong"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "kode voucher"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Mengirim permintaan 0%"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Mengirim permintaan 50%"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Permintaan telah berhasil terkirim, mohon tunggu sebentar untuk hasilnya"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "kesalahan pengiriman!"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "pengiriman berhasil! "

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "pengiriman gagal!"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "sdk has not init"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "{}"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "berhasil"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "NOT GOOG RESPONSE"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Mohon diperiksa koneksi internet anda"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "Kirim pesan OK!"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "permintaan terkirim"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "kirim pesan gagal"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "parameter pengembalian tidak benar"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "dibatalkan pengguna"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "tidak didukung oleh operator"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "mengambil AIS generator kesalahan kunci"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "kesalahan protokol: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "kesalahan io: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "UnsupportedEncodingException: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "ParseException : {}"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "handler, payListener or Activity should not be null"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "kesalahan kode voucher"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "Silahkan masukkan kode voucher"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "the price list of .ref file is error !  (isShowDialog=true, price = 0) is Ok?"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "biaya akan dibebankan ke tagihan telepon seluler Anda"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "pulsa tidak mencukupi"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "untuk melanjutkan pembelian barang, silakan pilih pembayaran Anda?"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "SIM is Error "

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "gagal mengisi, nanti silakan coba lagi , atau hubungi 02-6456436"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "Tidak ada iklan untuk sesaat, Coba lagi nanti, atau hubungi 02-6456436."

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "konfirmasi ulang"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "Silakan periksa nomer voucher dan nomer Serial"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "Silakan coba beberapa menit lagi "

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "kesalahan parameter, silahkan hubungi customer service"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "coba lagi"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "Gunakan pembayaran Baidu dapat mengirim pesan di awal."

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "Apakah Anda ingin membayar ini?"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "Panjang nomor voucher tidak cocok, 8 atau 16 digit"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "Anda harus pergi ke BANK atau mesin ATM untuk menyelesaikan pembayaran ini."

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "Untuk OTC, min 50.000 max 4.000.000. Untuk ATM, min 50.000 max 3.000.000."

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "Silakan install Line dan Line Pay lalu coba lagi"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "Anda akan menerima pesan yang berisi kode rahasia, harap menyelesaikan pembayaran ini sebelum waktu habis."

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "Silahkan selesaikan pembayaran ini menggunakan ATM "

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "Silahkan selesaikan pembayaran ini melalui BANK"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "nomer telpon tidak boleh kosong"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "Please reply the confirmation code after you receive the telco message"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x3a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u0110\u1ed3ng \u00fd"

    aput-object v2, v1, v4

    const-string v2, "H\u1ee7y"

    aput-object v2, v1, v5

    const-string v2, "V\u00ed d\u1ee5 66123456789"

    aput-object v2, v1, v6

    const-string v2, "Vui l\u00f2ng nh\u1eadp s"

    aput-object v2, v1, v7

    const-string v2, "Vui l\u00f2ng nh\u1eadp m\u00e3 b\u1ea1n v\u00f9a nh\u1eadn \u0111\u01b0\u1ee3c."

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "Ph\u00f4ng ch\u1eef \u0111\u1ec3 nh\u1eadp m\u00e3 : 1234."

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "Loading..."

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Vui l\u00f2ng nh\u1eadp s\u1ed1 c\u1ee7a b\u1ea1n"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "S\u1ed1 th\u1ebb kh\u00f4ng \u0111\u01b0\u1ee3c \u0111\u1ec3 tr\u1ed1ng"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "s\u1ed1 th\u1ebb"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "G\u1eedi y\u00eau c\u1ea7u 0%"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "G\u1eedi y\u00eau c\u1ea7u 50%"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Y\u00eau c\u1ea7u \u0111\u00e3 g\u1eedi th\u00e0nh c\u00f4ng, vui l\u00f2ng ch\u1edd k\u1ebft qu\u1ea3"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "G\u1eedi l\u1ed7i!"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "G\u1eedi th\u00e0nh c\u00f4ng! "

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "G\u1eedi th\u00e0nh c\u00f4ng!"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Sdk kh\u00f4ng kh\u1edfi t\u1ea1o l\u1ec7nh"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "{}"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Th\u00e0nh c\u00f4ng"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "Ph\u1ea3n \u1ee9ng kh\u00f4ng t\u1ed1t"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Vui l\u00f2ng ki\u1ec3m tra t\u00ecnh tr\u1ea1ng m\u1ea1ng l\u01b0\u1edbi"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "Tin nh\u1eafn \u0111\u00e3 g\u1eedi!"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "y\u00eau c\u1ea7u \u0111\u00e3 g\u1eedi"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "Tin nh\u1eafn \u0111\u00e3 g\u1eedi th\u1ea5t b\u1ea1i"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "D\u00f2ng l\u1ec7nh kh\u00f4ng \u0111\u00fang"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "Ng\u01b0\u1eddi d\u00f9ng h\u1ee7y"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "Nh\u00e0 m\u1ea1ng kh\u00f4ng h\u1ed7 tr\u1ee3"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "Nh\u1eadn t\u1eeb kh\u00f3a AIS l\u1ed7i"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "Nh\u1eadn t\u1eeb kh\u00f3a AIS l\u1ed7i: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "Nh\u1eadn t\u1eeb kh\u00f3a AIS l\u1ed7i: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "Nh\u1eadn t\u1eeb kh\u00f3a AIS l\u1ed7i: {}"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "Ngo\u1ea1i tr\u1eeb l\u1ed7i t\u1eeb, c\u00fa ph\u00e1p : {}"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "ng\u01b0\u1eddi \u0111i\u1ec1u khi\u1ec3n, ch\u00fa \u00fd ho\u1eb7c ho\u1ea1t \u0111\u1ed9ng kh\u00f4ng n\u00ean b\u1ecb v\u00f4 hi\u1ec7u h\u00f3a"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "S\u1ed1 th\u1ebb b\u1ecb l\u1ed7i "

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "Vui l\u00f2ng nh\u1eadp s\u1ed1 th\u1ebb c\u1ee7a b\u1ea1n."

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "Vui l\u00f2ng nh\u1eadp s\u1ed1 th\u1ebb c\u1ee7a b\u1ea1n !  (isShowDialog=true, price = 0) l\u00e0 ok?"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "Ph\u00ed s\u1ebd \u0111\u01b0\u1ee3c t\u00ednh v\u00e0o h\u00f3a \u0111\u01a1n \u0111i\u1ec7n tho\u1ea1i c\u1ee7a b\u1ea1n"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "Kh\u00f4ng \u0111\u1ee7 ti\u1ec1n"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "B\u1ea1n mu\u1ed1n mua h\u00e0ng h\u00f3a, Vui l\u00f2ng l\u1ef1a ch\u1ecdn h\u00ecnh th\u1ee9c thanh to\u00e1n c\u1ee7a b\u1ea1n?"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "SIM l\u1ed7i "

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "N\u1ea1p ti\u1ec1n th\u1ea5t b\u1ea1i, Vui l\u00f2ng th\u1eed l\u1ea1i sau ho\u1eb7c li\u00ean h\u1ec7 theo s\u1ed1: 02-6456436."

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "Kh\u00f4ng c\u00f3 qu\u1ea3ng c\u00e1o v\u00e0o l\u00fac n\u00e0y, Vui l\u00f2ng th\u1eed l\u1ea1i sau ho\u1eb7c li\u00ean h\u1ec7 theo s\u1ed1: 02-6456436."

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "X\u00e1c nh\u1eadn l\u1ea1i"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "Vui long ki\u1ec3m tra s\u1ed1 th\u1ebb v\u00e0 s\u1ed1 serial"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "Vui l\u00f2ng th\u1eed l\u1ea1i sau m\u1ed9t v\u00e0i ph\u00fat n\u1eefa"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "L\u1ec7nh l\u1ed7i, vui l\u00f2ng li\u00ean h\u1ec7 v\u1edbi b\u1ed9 ph\u1eadn kh\u00e1ch h\u00e0ng"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "Th\u1eed l\u1ea1i"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "This payment may send a meesage in first time"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "B\u1ea1n c\u00f3 mu\u1ed1n thanh to\u00e1n kh\u00f4ng?"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "\u0110\u1ed9 d\u00e0i c\u1ee7a s\u1ed1 th\u1ebb kh\u00f4ng kh\u1edbp 8 hay 16 k\u00ed t\u1ef1"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "B\u1ea1n c\u1ea7n ph\u1ea3i t\u1edbi ng\u00e2n h\u00e0ng ho\u1eb7c c\u00e2y ATM \u0111\u1ec3 ho\u00e0n th\u00e0nh vi\u1ec7c thanh to\u00e1n"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "Cho OTC t\u1ed1i thi\u1ec3u l\u00e0 50000 v\u00e0 t\u1ed1i \u0111a l\u00e0 4000000, cho ATM t\u1ed1i thi\u1ec3u l\u00e0 50000 v\u00e0 t\u1ed1i \u0111a l\u00e0 3000000"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "Vui l\u00f2ng c\u00e0i \u0111\u1eb7t Line ho\u1eb7c Line pay sau \u0111\u00f3 th\u1eed l\u1ea1i"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "B\u1ea1n s\u1ebd nh\u1eadn \u0111\u01b0\u1ee3c tin nh\u1eafn bao g\u1ed3m m\u00e3 giao d\u1ecbch, v\u00e0 k\u1ebft th\u00fac thanh to\u00e1n."

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "Vui l\u00f2ng \u0111\u1ebfn ATM ho\u1eb7c BCA \u0111\u1ec3 ho\u00e0n th\u00e0nh thanh to\u00e1n."

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "Vui l\u00f2ng \u0111\u1ebfn qu\u1ea5y giao d\u1ecbch c\u1ee7a 7-Eleven \u0111\u1ec3 ho\u00e0n thanh thanh to\u00e1n"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "S\u1ed1 \u0111i\u1ec7n tho\u1ea1i kh\u00f4ng \u0111\u01b0\u1ee3c \u0111\u1ec3 tr\u1ed1ng"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "Please reply the confirmation code after you receive the telco message"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lcom/bluepay/data/f;->ag:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(B)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/bluepay/data/f;->ag:[[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/bluepay/data/f;->ag:[[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    sget v0, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v1, 0x54

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/bluepay/data/f;->ag:[[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    aget-object v0, v0, p0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/bluepay/data/f;->ag:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static varargs a(B[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    array-length v0, p1

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    array-length v3, p1

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, p1, v1

    const-string v4, "{}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\\{\\}"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "\\[\\]"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "[productname]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[productname]"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v0, "[daylimt]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[daylimt]"

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    array-length v0, p1

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p0

    :goto_1
    if-lt v1, v2, :cond_2

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    aget-object v3, p1, v1

    const-string v4, "{}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\\{\\}"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "[]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "\\[\\]"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, p0

    goto :goto_1
.end method
