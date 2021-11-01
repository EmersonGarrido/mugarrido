.class public abstract Lcom/kunlun/platform/android/control/UploadImgControl;
.super Lcom/kunlun/platform/android/common/KunlunActivityControl;
.source "SourceFile"


# instance fields
.field private heightPixels:I

.field private lang:[Ljava/lang/String;

.field private requestURL:Ljava/lang/String;

.field private widthPixels:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;-><init>()V

    iput v2, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->heightPixels:I

    iput v2, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->widthPixels:I

    iput-object p1, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->requestURL:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v0, "cn"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "\u662f\u5426\u4e0a\u4f20\u56fe\u7247"

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "\u8bf7\u7a0d\u7b49..."

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "\u56fe\u7247\u4e0a\u4f20\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    aput-object v1, v0, v4

    :goto_0
    return-void

    :cond_0
    const-string v0, "tw"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "\u662f\u5426\u4e0a\u50b3\u5716\u7247"

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "\u8acb\u7a0d\u7b49..."

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "\u5716\u7247\u4e0a\u50b3\u5931\u6557\uff0c\u8acb\u91cd\u8a66"

    aput-object v1, v0, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "Do you want to upload this picture?"

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "Please wait ..."

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const-string v1, "The image upload failed, please try again"

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/kunlun/platform/android/control/UploadImgControl;Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    goto :goto_0
.end method

.method static synthetic access$1(Lcom/kunlun/platform/android/control/UploadImgControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/control/UploadImgControl;->uploadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/kunlun/platform/android/control/UploadImgControl;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/kunlun/platform/android/control/UploadImgControl;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    return-object v0
.end method

.method private decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->widthPixels:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->heightPixels:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v4, v1, v2

    if-lez v4, :cond_0

    :goto_0
    float-to-int v1, v1

    if-gtz v1, :cond_1

    :goto_1
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private dialog(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/widget/KunlunDialog;

    iget-object v2, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Lcom/kunlun/platform/widget/KunlunDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->ok()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/kunlun/platform/android/control/UploadImgControl$1;

    invoke-direct {v3, p0, p2}, Lcom/kunlun/platform/android/control/UploadImgControl$1;-><init>(Lcom/kunlun/platform/android/control/UploadImgControl;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->cancel()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/kunlun/platform/android/control/UploadImgControl$2;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/control/UploadImgControl$2;-><init>(Lcom/kunlun/platform/android/control/UploadImgControl;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    return-void
.end method

.method private setWaitScreen(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    const-string v1, ""

    iget-object v2, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    goto :goto_0
.end method

.method private uploadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v1, 0x0

    const/4 v10, -0x1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->requestURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.kunlun.platform.android.control.UploadImgControl"

    const-string v2, "requestURL isEmpty"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "--"

    const-string v4, "\r\n"

    const-string v5, "multipart/form-data"

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v6, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->requestURL:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const v6, 0xea60

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const v6, 0xea60

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v6, "POST"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v6, "Charset"

    const-string v7, "utf-8"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "connection"

    const-string v7, "keep-alive"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Content-Type"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ";boundary="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Content-Type: application/octet-stream; charset=utf-8"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_1
    invoke-virtual {v7, v5}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v10, :cond_1

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/DataOutputStream;->write([B)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "com.kunlun.platform.android.control.UploadImgControl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response code:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v3, v10, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    const-string v0, "com.kunlun.platform.android.control.UploadImgControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_3
    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v6, v5, v9, v8}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_4
    const-string v2, "com.kunlun.platform.android.control.UploadImgControl"

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    int-to-char v3, v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    :goto_5
    const-string v2, "com.kunlun.platform.android.control.UploadImgControl"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_4

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    aget-object v1, v2, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->widthPixels:I

    div-int/2addr v0, v4

    int-to-float v0, v0

    iget v4, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->heightPixels:I

    div-int/2addr v1, v4

    int-to-float v1, v1

    cmpl-float v4, v0, v1

    if-lez v4, :cond_1

    :goto_0
    float-to-int v0, v0

    if-gtz v0, :cond_0

    move v0, v6

    :cond_0
    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget v3, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->heightPixels:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    iget v3, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->widthPixels:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    new-instance v3, Lcom/kunlun/platform/widget/KunlunDialog;

    iget-object v4, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->lang:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->ok()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/kunlun/platform/android/control/UploadImgControl$1;

    invoke-direct {v4, p0, v2}, Lcom/kunlun/platform/android/control/UploadImgControl$1;-><init>(Lcom/kunlun/platform/android/control/UploadImgControl;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->cancel()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/control/UploadImgControl$2;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/control/UploadImgControl$2;-><init>(Lcom/kunlun/platform/android/control/UploadImgControl;)V

    invoke-virtual {v3, v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v3}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->heightPixels:I

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->widthPixels:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/control/UploadImgControl;->activity:Landroid/app/Activity;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public abstract onSucess(Ljava/lang/String;)V
.end method
