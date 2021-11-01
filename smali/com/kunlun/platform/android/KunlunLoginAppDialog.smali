.class public Lcom/kunlun/platform/android/KunlunLoginAppDialog;
.super Lcom/kunlun/platform/widget/BaseDialog;
.source "SourceFile"


# static fields
.field private static aL:Landroid/graphics/Bitmap;


# instance fields
.field private aM:Landroid/content/SharedPreferences;

.field private aN:Landroid/view/inputmethod/InputMethodManager;

.field private aO:Lcom/kunlun/platform/android/KunlunEntity;

.field private aP:I

.field private aQ:Z

.field private aR:I

.field private aS:Ljava/lang/String;

.field private aT:Ljava/lang/String;

.field private c:Lcom/kunlun/platform/android/KunlunLang;

.field private handler:Landroid/os/Handler;

.field private kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private mWidth:I

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x1030011

    invoke-direct {p0, p1, v0}, Lcom/kunlun/platform/widget/BaseDialog;-><init>(Landroid/content/Context;I)V

    iput v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aP:I

    iput-boolean v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    iput v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aS:Ljava/lang/String;

    const-string v0, "email"

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aT:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$1;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    sput-boolean v2, Lcom/kunlun/platform/android/Kunlun;->m:Z

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v0, 0x122

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mWidth:I

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->i:Lcom/kunlun/platform/android/KunlunEntity;

    :goto_0
    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.kunlun.platform.android.KunlunAppLogin."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aM:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    const-string v0, "company"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "company"

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aS:Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v3, "cn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mobile"

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aT:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aS:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "Kunlun.appLogin"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "Kunlun.appLogin"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aP:I

    :goto_1
    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "Kunlun.regOtherKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "Kunlun.regOtherKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aT:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "Kunlun.hideAutoLogin"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunConf;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aP:I

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private a(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Kunlun.ApploginIcon."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aL:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aL:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAASwAAAC0CAMAAAAZ4eHdAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2RpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo4MzBEOERBMkQyQjFFNDExQjRBQkU2NzA1NzE1QzdDRiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo2RUE2OTRBRTE5NkUxMUU1QUIyNUNFQTY4MjZBNzdGMSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo2RUE2OTRBRDE5NkUxMUU1QUIyNUNFQTY4MjZBNzdGMSIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IFdpbmRvd3MiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDpBMDE4REYwMTZEMTlFNTExODQzNkU1RkJFOUMzMjkzOSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDo4MzBEOERBMkQyQjFFNDExQjRBQkU2NzA1NzE1QzdDRiIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PnSDFMoAAAMAUExURfKWAcfZcM7n9BzIAIYGh+FVPrrQTf319HbeZqSWpumEdeTtuvbJxf7+/WzbXOHh4d9JMVkCbjfOJcqyyOd4aIThduMlKZPlhTDNFynKFdTikLPMPPGyqu6jmUnSNtbT1uRoVuuUh5MIe/K7tPGtpdr21ACAwyOTzBOwAeD420ml1RrHAOJbRfvs6/3t0rq2u2wAhbTtqhXGAMzzxQzEAIuJi/rk4fz89d5FLcPCxN08IqbpmlzXTOfz+RHFAPT98/SpL2oGcnJuc/ne3Ljc7ma03Lzvs5fM567rpPH87shCLeFLMwICAup8c95BKHIAi2MEcpMLgf74+AB+wozG5dH0y+z66fz++un65fnPi+nr6eTo5OLe4dvnopJMkmBUYq93rJYrinsJdPTCvNw3HELGMULRLdjH1wHBAOX54ZNzkk5OToIKdbSstGUCfKikqHAHc24kdnwEheqMffa2TPGVl+lVWHwDieU0OIZXho0KfurxynQChHIFfOEXG/D12XUIc/zoxfbPyzAwMFLVPfrZovzw8PjFcuzy7edFSe+pn5znkPT09IQJfWAEcPr67sLwut0/Jvn992sEe/fV0CDIA/nS0+tmaXkGfuNhTSbMCEsLWoUveiXKCPOgGIoMd+bs5/vo5r2HtqU0ke2dkfn5+YsXg/jZ1BeMyfT6/HMBbiHJDc7egfb552YbeHoDdI8BdMOmwc7Rz7BgpEwpVP7y33wIeOfvwuIdIYEddeVwXo4EfoQCcuQtMXU6g4zjfnUffd5DK65OoCrLD/CIim46e5MehoFGg4YAbfHp83m94B7IDiXKD3cca+BQOehOUexucVtEYIAGf+Y9QOXl5d5HL8DVXt7U3pcOfPT34ctNOcCbwiDIB/vfstHZ0tre2vjX1fv8/epcX33fbu59f/GOkOjv6f77+xzICV4Mch/IE/nb2YDA4RfGA2MPd/OfoZ/Q6SfCDyjHDzXOHCTMCPe8XPfBV24OcMzLzBXGDbLLOQGCxP///99KMh7IAP///+/YopQAAAEAdFJOU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wBT9wclAAAlZElEQVR42uycC0BU1b7/xeFhxIwjgaAMyNuLAwLjiJsBhxJDuMQoYzqGjzrBn/BUaE4pqaiRTaWmDmJJ5YOip5lmpTbm9cyl29NGjzJUt1OpeOR0jPT/9/Y/Xd3A/7fWfs/Mnhfpuf6b3/CY2Xvtvfb67O/vt35r7b1nyIDX9tgvt+4Au/WXu8ZPGvhn2GfvLHh7BGUbR2xkDT5Q9vaCbz+7pgcwxHtWO4aw9vAT+uuP6qWHNvJAzdg4Axu8wcQo+9M98zztRzr0znGvp8/0YFdfH3dpsv+w7hrCt4cfu86svn2ITwrZbfQLEeN4vf3SK273M3Tc1Znp6Vc9Wnr6zKu3D/UX1hMCWEN23HU9UXUuoFDRpG4TGAbG4frkK/H9TP4cROO1zbx65xv+wdr08I4hKGaxuJ6UulW7B/OJ1X0PjWBg8VAtxi+GGIfr7VtEZTXWB1RIXjPHTfYL1kDPd9+Nf980/ru7bmVoiYLybodeA7vlZ0dUi/lGEaPUhQv++I4Iq6vpV320mWMn+wWL09h3NK67RBkYvllx8GY3dnDFNwavceXzWHGo1ixeg384XLdx4nJJa/LrPrNCtN7wBEvfdPHciROPXBDD9SQVtx5zycpw8K3QuCseLC70rYNSr2h99fZGhhWLao3AKGC0uDCsn/Od93PGrQ+mp+MeMt0p+M+8/YxbWHmPHB+JrSFVsHzS+O++e2wTr2982FVjD3Zd8YiK4tV10AtWG/5tI19WHKl778U/HC8mcqHiD1U57ejOme6C0+vjbv/p0qVpn98+1klbU93AuvBRw0jGGpr4evoFAbr1yffRB0pbTzjJatJbcVfivIKFSr01yaO4/ljPY8Wo6l6+sbj4tB51ckJ3qho3dTIpxjT99TfEYJkeOTWSZ+ekzsnDrd8hcjhuPeyYy28KukLpKs4LYlAiaJMHVmN+pnyQLyuK0QP0iwW2eDHTLcIW9dkOO/pJVFjpY6fyyn3uFNhmXhKBFbF0pMCO611kWjsQre+co5ZUOikIo2JAxYmKii0QNMl9GvEo5YS0rhhUAIk1ihcrLhrWxn97xcvoLkwPXMBKH3fGFayei0eErEY+zYO16f8yadat41He5eSH0oG3KFZXroR2BQW5jfIsrbfcOuKvHCtKVo6oaGAULtYT0UZCaU0VFdbrwmGNC1gzJ7uAlXVupKPxlTUgfWz8+Cew+z1J0lHrFwGrgzSD0PnIu6SrUfxyBWr06C4O2kF3tKiIxekKs3I2rC6htmZ8wt/PG6JeOHPqgAdYrB/yYRUvdWI18kQPXhVW3FQdUYzfvo9o3fo+7Ye3CnpL3A+CWADVpj17IJ6tCHXF6mZclPHIrknisKreZgMWFhbHaidrnLhYbWFp/fiVYEgoBmusQ+0/uYD1uROsZ592ZjXyIgjkwsUTx081NDScWpqK0D2BXBFi1Xj0f4eTsJBjDUgNXXFx80nDwGoXcb5rwGAYmM+FLTfSerBeELA4VDxYO/meyJNW/U3eDHRm/sTX3+ShQz+f6SKqOcJqcsVqZHVb6lleHDsHtN5HkL6jJbaD3zQUseLiQjcNGAYmgaTmA7OBmx0cERiFGoDOfCbKY7iiXjhjI+OEazhWOx3tgZ1CbeH8YeMnAljpHr2QvDRWpLt0hOVSVxDgHRYraEiuYCFA0Pb5SCgGDAskNslFijp6k8A/Q0XnEs/8x0Yma3gTbC/Yh7Tt+1CIi6XFOuLGhzZ4A2sorw9I9w7WBdesnOy5HipWObuhFFwOK2cSeJkUK0tqQP4mgBU3ej5Eq64gkBV+h5etFvPDqrdpWFv+9OKLf0Avnn288+udXycLcLG0wBEhaI3xBhbbF0pFw5oDrLbj3rFCveNjTIDfIQjwKGThxGlgTxcYTh+6QkcPrIjj+yCK7UH4LQx1NtGqEw1aY37cOAJPNMx46fy84fOQDQebN7xzeGfVS/uAFvwkc554QCitbJ9gvSFWxAFWz3Neshq5VD9APrljxxPM8PAXHqyb6Qj0DU9J8CmOl1tBz2egwlWXQcqq7mYxWPl0xFp827dF58F2dQ7HL/S+DMH6GqmLxrXTUVr1D3qAhSeQWTd8YxweSXuE9VcnKIcOrUJ26JBjKoGaNR6PDn8RztKgmE0piw8riHJOBhYEfzq2d6FR4Wiq+5wvBiubHhMufvPRPyLLrkLC6hyDPyxIBlb79u37FL0+RXFs794393KwNvK7Q1ew0qdOBuNmYCZjc5E6CGBVC/N24HToyKmnjy+FhGEkvOevSxVOyu8Yz4OFm36li9w0f/780RCzguD/QeycvNg+yUDH9tGTpAdDKVijxWFhL4SsYQYK8G9+mX0e0Zr77qdg+1DIevclod3DdYgjZniCNdlVndPcw8p6WkBq5KkTF6svtLWZTFltec+mnjs+kuN1qo3X+T2549YnepzHOt/gj3RvOEAj5Lo+iGYotoPKujyOeLI31m+cwaRYBx544MMv85G2Ooe/vO9rbPteKnsKDHno+fPwpuyPbx5gpVXvF6w73bvhOT6qU+eqw6Qk38Kazp1icJ2KCOPt933hlEEQoxODVGoIhaQU/kk3hTqlDii2G7p4zhkkljpkM6PCNQcOAKsHnvnwxf2I1tz7vk6mYC34/vv9v45Bctv1w/7939/0JhQEWl7BmukHrIgGDtXTF/NIF9b2UcMqqsiRsxfzRFqGknbU9LgVkJRSeZYB5OaYwsexGTybwndJRWHVz6i/bcviRgTrmWee2bnzw09+6AQy51+ipfX1lx98+eL+zuFz59704pdfPnTvAwhW4+Itt9VfE2XpTzCsVh15pI0UsWfPrmKzh4s9LmeTmUQgLhQc0fBWUNBBYDDfxUg6FE2/cysA1iYRP8xGXrhlMQ3rAYC1/NNH5wKtzvPvMrT2vXzfruFV+x9988Odhz/8EMGiaPkLa5o7WBFMdF91/FkOzobO4U/1CJzx3CquSzS5gvUN7XAQjW6mF+4Z7XJ6ZvQew8FQfh/5jRgs6NJmIGGt2XbgAQRr+c7kT//4FHLEeXTY2vfyV7uGn3/wg0+TYeXHrx6AJH9NI/JD0KQHWFfvvHTp0jQugx96Cdk4d7CYiLXqhIkBM2/i/Y/fccfjj0/8lRe9eni0ngtzAWt1HG8CdP7qPd+sGB0qMpmFc1ZeqrpaVFn1SFlrGlHIQm64fOfy5J2LUJe4iwpb+/59+NzOqon3Ji//evmHH9/31S3vfLtgL1LWlhmeYaWjqxTTeHOpIpeqWVh5pxhWYTSVH6bcwdqU4RytrOMcrY+kzrBWCGb2qJDk3ZWLKyvE3bB+y5bGRhAW8sJnloMlH96ZvwuFrW8B1r53O+dW/fAoiAzWHP74+6qq87MX7G1sbNzijbJwlJ/mbibLAZaCZrWU0VX243fw7PExHK1qrtdseNYZ1sErcQ7zoHFxbq5V8NGKjXeyZ4AX3ta4pnEbju+gLLCv9734/Vyg9dS7+5Lfreqs2v/JvuTK5OWVoKwxkN3/8Ke9dIT3FdbtHmFRXnjoyAWayIN3CO3xTo7WWS4/fcQZ1s3e6sh5hvlmcTeEzrARscKwEKvK5Mp9jyJpdXa+fE/W3PP5L4KuKrGyXgVYu255c9s25Ia+wxp31RMsanZ01V9pHt/f4WhTOFgXV/FnHxxhzfcf1nxRWDPADRcDrW0crMrKr/fdhMJW57zO4eezP0CswGAVgnX+njcPbAM33AKcfVWWx1kHHLIONRRTOF65n6cpJ0eM4JR1PMwJ1mjX8+0O5hLWaDfKQjELWJ08ycGqrNyZTWXyVdkfJFOsKmllzV2AlNXoj7I8w8IZ6arn9E5OOPH7u6k3i7hkizf74NwfvuW/ssTmSjlY207SyqrE0kp+Eeemnfs/TgYXpIWFYHWO+WDbtmumrAaBF1Id4d0TgdMP9Ic7JrpS1gnnxDTIJYggB3OhLfHxDgMLaAmVVZl8Cwpbu97ZR7MChhjWrnfWLNl2bd1w1UU6FUWu9/h+A+oTH2c8koOVuop/IcNptOMK1s2OxVx2A10Gj7AOnHyGT+swDSu5kqWFYM09f89eVlk5vzmssxjWIxSNTgRrDE9jQjd8joV15FlnWKEuI7dBeA+bwfUAaJL3yqJgJb9ThWEdplEhNzwJypq7YO81dEM877fqnJRV1t0UmIksrF8ZVqe5aa8Tzjfgbopzju0uArfLjiBuk0dYFK1gOmhVHn4HKasKlFXJwgJlVdEh6xop61lEYNXTWRiH9G4WFtst3s8K6wQrrIYI54btiXPRyZGuBpHOtOL2eAUrmJPWYUpZtyRzrIKDX80e/uDeJdcQVhiedDikYPX0+K9CYWUzrBTcHPNHLhq22mkq5i2Dy4RAanDqN2FwKAqL7Q4RreXwwtKilDX3lkomulcGL3/mmX98+aclnBf+9rAGmpC0DtHSqkID6EX52VOcc9KIIyyrsybPsND9Ma6zJ+kAfa+NZ1j5CFbOlpWNKzGtYNAWsAo+XHmYCvBzbzmMrXI5xvjqq0uWnISSKxtzMKxFvzmsgUeocTSVaeU75u9nmIFhAzeh5XL6T+iG9BUJkZtOHa+8irnh/p/rc+q3ULSAw8ngYEASDFL6+N+/6sQzpi//4eU//OHjSkxrybvz7rsHCjauXLklBzasz/7tYekrqBivdzE2nPgKM9I5wrEqdtmwSaHC6dA94ncwSAf2CGmJ9Yadb6NG56wEo2A9Exx8+KWv7vtq3lNPVe2qQvZZ52efffUqpnjy3bKiexq3QeEcBCvn5/2/PayBMIrWc9SMMpO4o9ieT6MqPsHFq7PFIgh47Y+LE53PY2iF8kt3id1P+h850OotOY0YFuACKCe/3Z+fn5/9IGfZi15FggtesiA7f8FKgNWYgxnz7yv9zWAN6D/CtE6lUtM0v068H1LS+yfuZ1D9lXPBkedMYu1n74tBulrt/l5R6cA3Xbx5ZdELh1NyWGkxsIL/8Y9/3Iuu9uzde2Dv3nvRzOiBYGwnV864rXEJKos3yvmk6FrAGhhIfRpfr1jKXK945akNzHRy9bkG7lLY0wrPYom7EufOB1la7N2nV0JFiy/Crc5haVG4DqOfSojz6A/+pWAFL1lGscJWP3Hg2sAayDuH861Dp05cfJadXjadFl41PPJRm7vmH6SlFTfa8z3IKMqP5i6NiRWf93Y91XIaVvCSYNYqqd9K5vMSQLVkCcOqPufHX32E9bnozYGOtxz1NJ1owOo6NPLU0ucqzp2reG7pqSOHeBfwT5077QHA6iB0f1bQCq8enYAiK4LQ/HPQavFCZ6bQsLC2lmFeQlysAUiKFS2snLs3+Kos0ZnS251vk3z2o+P8+xwENzo0LBV93ILf/D0HV+zx5dmdPSsOui+f/SMHaxmSTvCyYFeG1i3DTjid3mDEIsHNyrd7MVMqej/zNFd3K2elfHS2wfnWmVPPPRIR5v2TS14/wORF+Q13s9KaDriwueC1DNEC43SV82fBMxbkpZn+w0ofKvbQwIWUR86dfbrhCLKGU8fPnrtYXRw24HX7fXs2znP5/BdyKK1MB1rLlrnCBR/RD0I1nRXWC4u8e8DCizl49hELf54Ku652ZsoImhbGxYmLfVGgMKzpYLQTTtkg3A8pcl+fFzGLvUf3fzysgeF/pmkhEiunL+PUxf1QpFYyqKbn1L+33+lhQxFYlzz1hulXJ98wsAby3wNa0xEwhGv6MtYZBTZ92XS6ELw2vveg025EpDXz86FTh1ImErO4m79vAFgDixAt6kXhmu6MirIcCtjGF27a4LwbkaiVTl/IF3vKdebYMzcSrFduem9E/XS+LaNetKKW8dYArvoRL0zc4Go/orduu31M+ip358iNAGvgFdAW7Yp8YML/9Oqc+hHv3VTmej+XfKeVns77uoIbAhbErbtfGLExZ7obo1YCqhf+/GCz2G6mpaf7qiv+Y1A3CKyB4RPfe2HEiHr3vOoB1XtTfnCzm6ljfRFX+sxxgq/BuFFgDTTnT0G4RtTjmWb6J4d9BwYrAVX+Bre7mfyTd18Ygr8yZOw0wXdg3DiwYOTz68S733vhBURsBPuH/QV77/6J2U953M3kaWPpxwXcGQAd54DqhoIFgX5u/qIpU+52aVOm3JQ/7xXvhliTp166071NmzZ1svNAbEirLcR3+8//DPmnWSb6Y2P+ML/XpeYhIX2+W/m//mt53+/PQgKwArACsAKwArACsAKwArACsAKw/ofBktsJEZMHYAlhyXVWW6ZrC7Hr7AFYPFiEubW9JSvMpRUrLIQ1AIuFZbbF55HiZkpJNAdg0e90IRGke8uzmAOwqHhVzrCSitNqtV5TWHK7XT7YEtcFlrmderQ3NTwqyUFiEeHr6GfGquVyH2HZrTowwrsWloM5LyXMaBdWu3gJV1Va7dcOljUEP3BYnUkkWkLs4Sb+dzpk1mhS6GfKLYRPsAiNLTEqKsqS6c2h2+2peW1JVkeu9tYoZIk2s1xOtOe1xcvdkreb8QaWVjtxzWBpKpD3NdlqWttIhUYTpec5n62mhn7+glyn8wWWrtwYgbDri9dlej50gqgmyXidAwq5bh3VvzRF6exEKkkq3MIirBUpbdCUnraUROIawZJjLwxL1GhC8sjUGqtGwZNWSmISo7QIyqG8g0WEpDC7aLF5AytFBBYVRU1RZmKdB1h2ezxzmk2JumsEy25X4JBksVS0kdWJUSEW+nsLmsIVUlKP/qeir8QoDiG8hmUvR6zy4qPgXBtRP0rozGYz7WZ27j1aDDEGIhsNS26FdUwOLDcDoJaodjhdEeVWCpYc7wlK2OEf2gdsQFBk0Tk3KSqi4vMUBNoTW43VrJMTZlROjuqjinMVUQdBeAWLkKOg3h5iQmdR2kOmZlIpV1urBjUB4pZGh/9T/aFXsKwViH8IHKU9pBwOXGeLMhrDM7F0rHILvE+0wtFRixMTLa00LMLaGm40WuRWzg1TasxGKZnVasaw+ohy2Npo6TO3wpY2udwOH6NQN2ltzYITmqgDGCE29DmzAkq0Ag+or8IeEg71m3WodDmBXBZXZLcyB2Epl3sFq/w1DIv5QpWUEApWXkhNTSoVt8xIeyYq1fIOFrQ9D9iAoYboLBFo76+FAy1rZgpy7Lx2GIq2NqHFWVlh1RoMi7C35+EcONPKKqvaak0MI000LF0ijoRhKSGJcGrBOUMuoGiKzkeSlAyLMvehKkF3RDvutYqT7HI4ESYjEsRpCxKpPsVG2OU4CTcpQghrIj62rJQQwgtYOqwkRZ8xqT2LbDK2Jyaa2HgVxvvfU6HxFpa8HI403ixHHbnVare35mHNkvpwnd2GDhsdXryurwlYKKC2JqMZwTKjBusvtIHX9dlZZWlqwjll6RL1ZN4FiA0KegtLD6yzIreCzxF2O0FVKdelkvrTsCe9xUooyB49rtJE1ZyksYLLhqGKUuxy6FqyTpvIpnK7N7AS0RN0Wa01NSCpdTWamnj2+3qkZItRoSfp79Qyeg2LyIRdhmtsqa+1tLQ0JaIOtTgqEVpzwaYxwjEbW+NBBq2gmNM2tNJYY0dN12S2kT1Jfa2nyUkVOkZZEa3GNhRS6ZhFJBlDyoFpnh368NM21DlVE9BMex80ep2GSDoNVZ4Ot+pa4y22zBa0DMVkaXurAsJMscUCp7HaDMcXZpQnFgNLqFOaRLSui9J544a6KKykakgdsnDqkMXLs1pr7NXMh3azT7AqNLbTdIIGrpJUUwNseqKQv6XUaMrRIuhJIuTo3LTX4JhVE45xatASDaMsqVTQG0KgJmoserLNBuoNSzSDOI063KVEINw6qitP0qFQTqATkVqDYDXJa8BhpEYcWSLMUFFLn0YDu0wi4CBbwvs03gV4czgVrVIydRaIwRVZrpNSKjR4B8tua0NCtClaToMuE+Hk6aN0RGYxKQ0nmjB1JP51kAzrjVHFyMEpWMg5iouL4QhSUU+HlIVQ9bREmeUULMKWlHKhGLKpNhtuaqYJjhHDQtpUmK1Jr7XAuU8yWy3rmoqLTVIaloLQQSwIs5hRnxmhi6cqMqHzZEQx5kJSOeEVLCOTgcZXWIzVesFwpzoqPox99Ndu9zbAE6B/hdVOmIEawALRI1gXAJYdw5Kj1CLVHIW/36xHUU7lWUhkPWF6fViWKRXVhZV1ISmpAmfwCJYupAmFBz3ACqkBYaYkwUnGGYTcnIpTOsJsrUY6DofD1of1MLDWYVgmi84cj5RFV2QymeKt5qgI1GaF3JuYpWln0Uj1TgNo3peOVcu9hxWPMsMauzUEYFnK85DOzK3gBxUaaIpCY+9rQRHedjosojolHGRBwYLTdro1sxUsRM7ELPBZMwKHYWkATla4LRzcMEQH3F9rgU6Dmg/RgYP0QPAjUNxIkqO+IxFlxgwsK4ZlpmBBRU24IjSzqZGjzlrvPpFllBVPemdNfYTXqQNOeoy2PosJYKHQ0ZIph3qyQlCAz7JYketbQAxtMDCBzp1SlgZwmqJqzOaQChvbG1ZTbaBgoWNtkdcAMoClSyLDwshiG5WUETbgY2rPlKOonmTLQ/JCp8SlsqBPzbJoNFBRX6ax1Y6itTTKC1hyq8JLWNS4xStYcnMS7qpN4AxnojQQ2skwiB9kvJVAUV9vgrXVfdZUaY8JsqzTRiqDN6Pxn7QpJUKf1UqweZYAFmDqiYjo6QFYViITeXEqk+/rLDgDM6G+Owl5e1tKG88N+cpC2QQpjUAV2Vqz9E0pLZCcZFq9gGVPcfQ8PW0Oy6lz6N3YUG435lEJRw9k1UQFznPDUkGb1sQmvDgC8vtE+jsZ9VFmFPB11hD6edoWPPhGyRJEYxoWtC+FillkPKSZIVY5YgubsnK2tFBBo6ctXIMnT9qMJlKBe1oI8JAh9URhWE12c0gKFYqbbNSUCxR1P5dEwyqvFn7TZrwxnLb2JuH8nw+wYOiWaUxVpCqSwjMhvTZntisU66IIhEBnQyvCbTqrpSmsJTU1tRhJxqhQVBAw3LHEKxSpSa3UgVvDFYokupeyw/twyKBhR0YiUREPMtdU6EHuXFw228Ljocp2Y2uf3RqVqliXqEtShJvlaEs7kRmvWNdqJSpgl3JIl6NwRZkwXoI9prYn6rwZ7thtAiQXWjVmxjQ2gejyQnQ+zGehRAcbOgo8bDWbqXZR7wkCVFKcWaOridJDmkiPh+06dhtq8s+s4yYCzVZ6Y+hmYShFaGDQGG/mh0qmShgQUrvRoW2oLdEB2dldEnRJOHmCGt3DIkJa+LpK1Mh5kccWIYDlg7Lw9sh47/kroGKIqi12jU5j7CHXmdnV/I36XLxn/oJjtl6AvIQQqxK/Yf7wt6QLsEUFNXqAlfka7zKOQ5eg469s8xWWpymv18ieFEsUDA79mX/SxTdBIEwhrtO8PAPrAotDbzQ7lGFj8G8PCyISPWJvC7f63mQ00IGOwHpdL1jYOVfTJ5mdslizpc2/mOWFl1otioimppSkVp0f8tDFR0SkZpqv89UdNikNS3I1XaixMJdfI7xPSr2kpbPa0aSKf+qATa3XS1cOUzQgnHCzy9GRuZXuLo3eT/553WDI3f29GmgniOt4HZG5YKFLygNLyTSL1K2ztRdDAQU1O/Y7vyItJ9C9MoR4h0ToQqBAn2/XDf+/vXyvYxNGNwkmEbjXwWcLwArACsAKwArACsAKwArACsDyDOuGe0b6n/h09g319P0/24b87+3PD8L+JeHyfz3/O7H/+j9Dnu8fhG39l/8VK+n/vdjzQ7YPZnPJ7wrW9gCsAKwArACsAKwArACsAKwArACsAKwArACsACwHWEoVa0p2IbdMJQnA4uzYKNaUEhcLtwZgcRqKmTWBtlnRWhqIpJRZOKvksioAizFtCXf7aFmhmgLytzR22ZzIACwOVinvzuRZo7C2JMoJPFjaACyXsMj1WiV2w8HDkiiVjl2D4wIXZagux5uCEuVvecqUIntzC8uAHVHyt8HBUqrVqn6tVilcqtI69qxKpzLUIWlVHhdJVM6F/GDEdPauD8QDLDItVuW/slRqLVqlih0WXRu7PnetCgNRa9XoSFSy3JiOXgCJjkuiBZyqtaWlkexBSlBB2ELZsT5XRrUB9qdGtcOiUpmKl+UolX/pzo3Gm2rVrPEbzFusVtJgYHPqhyakVG+N7dBqqSoLXWrLPSyyAPbkp7KUCbLCDmX/VnXtQnJYZBk5DNqn2j2soLQbnQF1AZl2WSuJlckilcqOQlmtUt1NkmuZvfduLSzIPQqVKS83kwUYqKo2JregsFcJ9BeSBWqJpKOWtg7V7s3k5l50OLJoxo4O61CyPlp4lF0eHYsXd0ReZl8d1DmNmTUnI3etVqK8XAQByA9YpEztr7LUMeTCBHBjLcCSRc4mQQzayM1Yrwnafu16BEu1liSHabW1c8horXoYB0v5F3wcswu1ytgyHDolWlkZenK0QClBsNar+7XDyGbqmbNh6t0lZEkvojKLO/IM9lCV/D7ekIBFGUM2U1ZURnYDGW0kbAr7K5JBlbPJGL9gLYQq/VLWVgSrVsuDpVUqc0lDaUEZOeuYCsGKZWEthAPmw9LGkOTm9QvJjFr15dn4NKvXziYzYuBAorUULIkKyi9My8jIWChjYUmO5lJWmsaDBUVL6MWzaFi9R5tnUwanAGApVXBoMbWyNDhmtd+wyNxe1Va/lVWrVmrrIhllqQtB3+q6aDg8NacsmVoNJQTKUl2eQ27+W12hgYxBR74eNaaALEuoOzaBzOhQ08rqJosKRyE/2q6iYUGldbRF82DxFstIEsHql1xem0AZLJFp8RktVavr1krJo4OABQ1T+q8sdUdtbOEcWlmgl+ZIrXZUBpmrUnNuqOxNmEMOww2hYallBqmsTqKaQG7+YhTAUqu0kWnQmP66brK5sI5VVlFCnRZMqWRgKQu7hyHrlpXwYanWdlPLZaWUslBvAd0F/NTBERRq+9WFzeDNW5XHIBxqBwFrTq3Wf2XVdYPQpTSs3lIybbtEotoMfqhm3XD2woVzDGRJdHcuKWVgHSVn12q3gvoyIo/NJgtiI/sTUGgBZywjo+s4ZSXQSmRg9ZZw3yvHc0NtAbeYhsVylEGtqn4k+mi1BHEqGIyyyJK/+6+suu6ysiIaFoosE5S4jrTYOlZZzUVFRXRTDBQsCZCcA4NQ7VGor2M2KTUYZAkG3EPUQjs4ZTU7wlKVkHPoqFWyPlbFwlpPNucy0SxSkENBN1GG+pvYNHJWrLb3KOouBgOLjN7sf8ziuSGG1esE62htbeFCclZpwSxGWXxYtaCsIojhCc0OsChlqZyUVcqEpzrtVh6sWWzYEjZASwU3iTpaSqatLzGQm4/544aGOcy7otn+94YowGfQsJS0G5aQs3ZzbiirqxuVRnYLYtZRsgw6UhWUQcoqiIyUOLmhQFlfMMrKJdOiu+lEay2TWCJYs5nF0TJBvgkdx6xYqn9ErTSURPqVOhR1L3QWmW/Kyois0yp3JyzkAnxRrUrVIQzwMnUdRG9B6gAB3gAJXi8d4GPqoMOEAA+wuABPKUsNGTgE6i84ZfETatrhJJAB86YH+MMsSe9msuQLamyR0B0TXbgb8mA/YDXXygYDCymrbP3R0gmzhs0Spg7dwtRh/dpC2RwhLJQ6lPTWQQ9FpQ4woFGVgtjqdk8gF47Scr1hYcflyLWF0aXRuTSs6NLSUggaswpKS0uGscrqleXC5yIyDdbmHuUrS7k9gyyloIIPqPGg0x9YhoT/zh2UstbT40vI9ChYSmUJ2VywHpLSUbyklI6LTklpydE5KOjhpFSJHTADBU8mKUXKIovKqL6htBTBApXB2K8uErk2GgXSypJg8SFfP0ovVmoZU8PQBpaiaiWxw7px8EeDBp9hra2rXTgIWCpZSUluQUx3bQIds1RbtZG4X01bywx3lLXMFCzojj/cOZZrQL2/TKuiYUG3hWJKc8FfuOFOUVnZ7DkL0yaUxKzFytodi2wUJJbRX+C3x9ChSajFf4fDWP93avH2hLW0JQDxmNq1Cdsl/TgkIEaSY7LoBKWvsOD4Df7DwrMC6JRyY8N+7SgYSEdHohEjhtW/9djuY7u3w+9WCR9Wv+pvsoLSo7VqiTKWhiXRJsSUrpfRA2mABUk4am1t5DFV3X+jmKWVpc1ClgbDoAn4TYwKZ6T04mZyNn6TEVObQRqaqRdqaDMel1HxU6lUSpRqtdbHKRqAJXHKJHyBJUEVS/CsAwMLEmcAiHZBuSFyEeZSkgBWvxK8Bc+XMMrC010qNMFCjw37e6mZGK1KiVMHFWQBdLSlB9gQjVCVhUyDmMW5tRMWZjCWBsPLhRMiVYyykPVL+n2HBceV4T8sZpd8WOwsJ60s3p6EsJjpSmbWgd4Wq45SFupEGB3iPEsZW+tgl7Ebdjgt3toxinuhPx1bKTfMwIoEFZaOUvkMizstg4GVdkZGz2fxwn8B5FCCfQnmszhkzHwWLxjGzkHzWfwl1HwWkqmS+1GqWMbC5UqkeaFhdyWbDbRRuZevsCS96wcLS9mxtvDyZXqmlBf+c2M6hEsEM6Xc1uxMKW9RqUywKZop7R7sJLwyVsZZ4Xal77D6VaMmDBIWmkrulXg3By/xdw4eJDP4KXje3LPLI/EIC8bjZYOEhULLjXV1x/dLYTQsJWTiZOC6oYcr0jQsiJ4TyMAVaQ/3OkxgZsm0CeyiwL0Ogs+ubphRBe6icQ1L6epWrMD9Wa5h+WgBWAFYAVgBWAFYAVgBWAFYAVgBWAFYAVgBWAFYvzdYzwdgeWvPB77lyIdvOfp/AgwA5JX6JHL1aosAAAAASUVORK5CYII="

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->Str2Img(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aL:Landroid/graphics/Bitmap;

    :cond_2
    sget-object v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aL:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getDeviceUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kl_pn_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->saveData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "com.kunlun.platform.android.KunlunAppLogin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "savePublicUname error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getDeviceUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0}, Lcom/kunlun/platform/android/KunlunUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.kunlun.platform.android.KunlunAppLogin."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "username"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "password"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thirdLogin"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "com.kunlun.platform.android.KunlunAppLogin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveUnamePass error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;I)V
    .locals 13

    const/4 v12, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v10, 0x11

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setHeight(I)V

    const-string v0, "#15611c"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(UID)"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunEntity;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->aG()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v5, "Kunlun.hideSwitchAccount"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v5, Lcom/kunlun/platform/android/KunlunLoginAppDialog$40;

    invoke-direct {v5, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$40;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aH()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x22

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/kunlun/platform/android/KunlunLang$n;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/kunlun/platform/android/KunlunLang$q;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/16 v1, 0x10

    :cond_3
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v1, 0x2

    if-le v6, v7, :cond_4

    if-lez v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v1, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v9, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->aH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    const-string v1, "#5d86b2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1e

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/16 v5, 0x1e

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->aI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x32

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHeight(I)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v1, v3, v8, v4, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v3, "#15611c"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Lcom/kunlun/platform/android/KunlunLoginAppDialog$41;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$41;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {v1, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "#5d86b2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->aJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/kunlun/platform/android/KunlunLoginAppDialog$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$42;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/kunlun/platform/android/KunlunLoginAppDialog$43;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$43;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "#15611c"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->aL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/kunlun/platform/android/KunlunLoginAppDialog$44;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$44;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V
    .locals 4

    const/16 v3, 0x19

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x108001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "#6D6D6F"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$26;

    invoke-direct {v0, p1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$26;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$27;

    invoke-direct {v0, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$27;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$29;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$29;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$30;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$30;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v2}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/kunlun/platform/android/KunlunLoginAppDialog$28;

    invoke-direct {v3, p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$28;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Ljava/lang/String;)V

    invoke-static {v2, v0, v1, v3}, Lcom/kunlun/platform/android/Kunlun;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 6

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$48;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$48;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v2}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunEntity;->getUname()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/kunlun/platform/android/KunlunLoginAppDialog$47;

    invoke-direct {v4, p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$47;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Ljava/lang/String;)V

    invoke-static {v2, v3, v0, v1, v4}, Lcom/kunlun/platform/android/Kunlun;->changePassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$ChangePwdListener;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V
    .locals 7

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$36;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$36;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$37;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$37;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V

    invoke-virtual {p4, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p4}, Landroid/widget/EditText;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lcom/kunlun/platform/widget/WonCheckBox;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p5}, Lcom/kunlun/platform/widget/WonCheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v3}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "user_name"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aT:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$39;

    invoke-direct {v2, p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$39;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Ljava/lang/String;)V

    invoke-static {v0, v3, v2}, Lcom/kunlun/platform/android/Kunlun;->registRequest(Landroid/content/Context;Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aM:Landroid/content/SharedPreferences;

    const-string v1, "thirdLogin"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->username:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->getDeviceUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aM:Landroid/content/SharedPreferences;

    const-string v3, "username"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kunlun/platform/android/KunlunUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->username:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aM:Landroid/content/SharedPreferences;

    const-string v3, "password"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/kunlun/platform/android/KunlunUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->password:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "com.kunlun.platform.android.KunlunAppLogin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "desDecrypt error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "*****"

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->password:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->bf()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->password:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->username:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->password:Ljava/lang/String;

    new-instance v3, Lcom/kunlun/platform/android/KunlunLoginAppDialog$12;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$12;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->login(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/KunlunLoginAppDialog$54;

    invoke-direct {v1, p1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$54;-><init>(Landroid/view/View;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 10

    const/4 v0, 0x1

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->ao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    const-string v2, "#537fa8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-direct {v7, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.facebookWebLogin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x18

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v8, "#3a5896"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v3, v4, v5, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->ap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Lcom/kunlun/platform/android/KunlunLoginAppDialog$23;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$23;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "signinwithgoogle"

    const/4 v2, 0x1

    const/16 v3, 0x40

    const/16 v4, 0x12a

    const/16 v5, 0x33

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v1, "Kunlun.ApploginIcon.signinwithgoogle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "#df4a32"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$34;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$34;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "#537fa8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->al()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    const/16 v0, 0x41

    :goto_0
    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v3, 0x1e

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v3, "tw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/kunlun/platform/android/KunlunLang$p;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    const/16 v7, 0xf

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "#4aabe2"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v7, v8, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v7}, Lcom/kunlun/platform/android/KunlunLang;->aq()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Lcom/kunlun/platform/android/KunlunLoginAppDialog$45;

    invoke-direct {v5, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$45;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    const/16 v7, 0xf

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "#4aabe2"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v7, v8, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->ar()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v1, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$55;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$55;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ""

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->as()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v1, "Kunlun.hideYahooLogin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "#4aabe2"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v1, v4, v5, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->as()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Lcom/kunlun/platform/android/KunlunLoginAppDialog$56;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$56;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v1, :cond_6

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "#ffbb34"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->at()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$57;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$57;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    const-string v1, "two"

    sget-object v2, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "GoogleSdk.loginType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->an()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->an()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#537fa8"

    const/16 v3, 0xe

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/widget/ViewUtil;->getTextView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$58;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$58;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.hideFindPwd"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->am()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunConf;->M()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->am()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#537fa8"

    const/16 v4, 0xe

    invoke-static {v1, v2, v3, v4}, Lcom/kunlun/platform/widget/ViewUtil;->getTextView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$2;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$2;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-nez v0, :cond_c

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    const/16 v0, 0x4b

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x5

    goto/16 :goto_1

    :cond_b
    const-string v0, ""

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 6

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$52;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$52;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$53;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$53;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v2}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/kunlun/platform/android/KunlunLoginAppDialog$51;

    invoke-direct {v3, p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$51;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Ljava/lang/String;)V

    invoke-static {v2, v0, v1, v3}, Lcom/kunlun/platform/android/Kunlun;->bind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$BindListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 11

    const/4 v0, 0x1

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v6, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->ao()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    const-string v2, "#537fa8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x3c

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    invoke-direct {v8, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v10, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "signinwithnaver"

    const/4 v2, 0x0

    const/16 v3, 0x77

    const/16 v4, 0x12c

    const/16 v5, 0x3c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "#1dc800"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$3;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$3;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v1, "Kunlun.facebookWebLogin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "#3a5896"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->ap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$4;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$4;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "#5d86b2"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const-string v4, "#92acc9"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->aq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v2, :cond_4

    int-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    sub-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    :goto_0
    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$5;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "#ffbb34"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->at()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$6;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$6;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->b(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method

.method private bf()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$31;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->autoRegist(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 12

    const/16 v11, 0x11

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    iput v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v10, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x23

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v1, v2, v8, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x3c

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {v2, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/kunlun/platform/android/Kunlun;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v8, v4, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const-string v5, "#1dc800"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v8, v8, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunLang;->as()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/kunlun/platform/android/KunlunLoginAppDialog$7;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$7;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v1, v3, v8, v4, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v3, v8, v2, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const-string v4, "#5d86b2"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v8, v8, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$8;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {v2, v10, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v1, v2, v8, v3, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "#5d86b2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-virtual {v2, v8, v3, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const-string v5, "#92acc9"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->aq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v3, :cond_2

    int-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    sub-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setWidth(I)V

    :goto_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$9;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v0, v8, v2, v8, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const-string v3, "#ffbb34"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v8, v8, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->at()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$10;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$10;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/android/KunlunLang;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 10

    const/4 v0, 0x1

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->ao()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x23

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x3c

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "#5d86b2"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v5, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aS:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->ar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/kunlun/platform/android/KunlunLoginAppDialog$11;

    invoke-direct {v4, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$11;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v4, "#5d86b2"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v3, v4, v5, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const-string v7, "#92acc9"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v4, v5, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunLang;->aq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v4, :cond_6

    int-to-double v4, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    sub-double/2addr v4, v8

    double-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setWidth(I)V

    :goto_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$13;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x0

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, "#ffbb34"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3, v4, v5, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->at()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v4, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    add-double/2addr v4, v8

    double-to-int v3, v4

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v3, Lcom/kunlun/platform/android/KunlunLoginAppDialog$14;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$14;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v7, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "#c8c8c8"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/kunlun/platform/android/Kunlun;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x11

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "signinwithgoogle"

    const/4 v2, 0x1

    const/16 v3, 0x40

    const/16 v4, 0x12a

    const/16 v5, 0x33

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v1, "Kunlun.ApploginIcon.signinwithgoogle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "#df4a32"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$15;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$15;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_2
    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.facebookWebLogin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "#3a5896"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->ap()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$16;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$16;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_4
    if-nez v0, :cond_5

    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private dip2px(I)I
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/android/KunlunEntity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 12

    const/4 v0, 0x1

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aS:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunLang;->ad()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x23

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, -0x777778

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v5, "#537fa8"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->ae()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->af()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->username:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->username:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1e

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v5, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v1, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, 0x0

    const/4 v5, 0x1

    const v6, -0x777778

    const/4 v7, 0x0

    invoke-static {v1, v5, v6, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v5, "#537fa8"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->ag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->ah()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x1e

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/16 v7, 0x1e

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v2, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v5, 0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "#5d86b2"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->ai()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v3, v4, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "#5d86b2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const-string v5, "#92acc9"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->aj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v3, :cond_a

    int-to-double v4, p2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    sub-double/2addr v4, v6

    double-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setWidth(I)V

    :goto_0
    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$17;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "#ffbb34"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->ak()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$18;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$18;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aQ:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x0

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v7, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v2, -0x1

    invoke-direct {v8, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    sget-object v2, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "Kunlun.hideFindPwd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->am()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunConf;->M()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    move v6, v2

    :goto_1
    if-nez v6, :cond_2

    const-string v2, ""

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->al()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v0, 0x11

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    :cond_2
    :goto_2
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    iput v0, v10, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.weibo_appkey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v11, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "weibo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x35

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$19;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$19;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v11, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "googleplus"

    const/16 v2, 0x49

    const/4 v3, 0x0

    const/16 v4, 0x3f

    const/16 v5, 0x3a

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$20;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$20;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_3
    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.facebookWebLogin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v11, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "facebook"

    const/16 v2, 0xe8

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x3f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$21;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$21;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_5
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ""

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->as()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.hideYahooLogin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v11, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const-string v1, "yahoo"

    const/16 v2, 0x9f

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x3f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$22;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$22;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_6
    if-eqz v6, :cond_7

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->am()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#537fa8"

    if-eqz v0, :cond_d

    const/16 v0, 0x12

    :goto_4
    invoke-static {v1, v2, v3, v0}, Lcom/kunlun/platform/widget/ViewUtil;->getTextView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Lcom/kunlun/platform/android/KunlunLoginAppDialog$24;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$24;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {p1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    iget v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aP:I

    if-nez v1, :cond_9

    const-string v1, "two"

    sget-object v2, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "GoogleSdk.loginType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->an()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->an()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#537fa8"

    const/16 v4, 0xe

    invoke-static {v1, v2, v3, v4}, Lcom/kunlun/platform/widget/ViewUtil;->getTextView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunlunLoginAppDialog$25;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$25;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1

    :cond_c
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->al()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_d
    const/16 v0, 0xe

    goto/16 :goto_4

    :cond_e
    const/16 v0, 0x8

    goto :goto_5

    :cond_f
    move v0, v1

    goto/16 :goto_3
.end method

.method private e(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "com.kunlun.platform.android.KunlunAppLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "thirdLogin:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    new-instance v0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$32;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$32;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://connect."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "domain"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "facebookAppLogin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/Kunlun;->facebookAppLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "facebookWebLogin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/?act=login.facebook&u=102026&u2=facebook&ref="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunConf;->A()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "location,lang,pid,u,u2,width,height"

    aput-object v4, v3, v5

    const-string v4, "&facebook=true"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&g=m_kimi&return_mobile=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->showLogin(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto :goto_0

    :cond_2
    const-string v2, "googlePlusLogin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/Kunlun;->googlePlusLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto :goto_0

    :cond_3
    const-string v2, "googleAppLogin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v6}, Lcom/kunlun/platform/android/Kunlun;->googleAppLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;Z)V

    goto :goto_0

    :cond_4
    const-string v2, "yahooWebLogin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/?act=login.yahootw&u=102026&u2=yahootw&ref="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunConf;->A()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "location,lang,pid,u,u2,width,height"

    aput-object v4, v3, v5

    const-string v4, "&yahoo=true"

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&g=m_kimi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->showLogin(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "naverLogin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/Kunlun;->naverLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "vmgLogin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/Kunlun;->vmgLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "weiboLogin"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/Kunlun;->weiboLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto/16 :goto_0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aP:I

    return v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 10

    const/4 v0, 0x2

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aS:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunLang;->au()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x23

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v4, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v6, -0x777778

    const/4 v7, 0x0

    invoke-static {v2, v3, v6, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v3, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->av()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->aw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v2, v3, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1e

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v3, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v3, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    const v7, -0x777778

    const/4 v8, 0x0

    invoke-static {v0, v3, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v3, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->ax()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->ay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-virtual {v3, v0, v7, v8, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/widget/EditText;->setSingleLine()V

    const-string v0, ""

    iget-object v7, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aT:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    const/16 v0, 0x90

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    const/16 v9, 0x1e

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v6, ""

    iget-object v7, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v4, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x0

    const/4 v6, 0x1

    const v7, -0x777778

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    const-string v6, "#537fa8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->az()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aA()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    const-string v5, "mobile"

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1e

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v5, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v5, 0x0

    const-string v0, "tw"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v5, Lcom/kunlun/platform/widget/WonCheckBox;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/kunlun/platform/widget/WonCheckBox;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/kunlun/platform/widget/WonCheckBox;->setChecked(Z)V

    const/16 v6, 0x18

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/kunlun/platform/widget/WonCheckBox;->setHeight(I)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aB()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/kunlun/platform/widget/WonCheckBox;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "#757575"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/kunlun/platform/widget/WonCheckBox;->setTextColor(I)V

    const/4 v6, 0x0

    const/16 v7, 0xe

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/kunlun/platform/widget/WonCheckBox;->setTextSize(IF)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v7}, Lcom/kunlun/platform/android/KunlunLang;->aC()Ljava/lang/String;

    move-result-object v7

    const-string v8, "#1E88E5"

    const/16 v9, 0xe

    invoke-static {v6, v7, v8, v9}, Lcom/kunlun/platform/widget/ViewUtil;->getTextView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    new-instance v7, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;

    invoke-direct {v7, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$33;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "#5d86b2"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const-string v8, "#92acc9"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aE()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v6, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    sub-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v6, Lcom/kunlun/platform/android/KunlunLoginAppDialog$35;

    invoke-direct {v6, p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$35;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "#5d86b2"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "#ffbb34"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v6, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V

    return-void

    :cond_3
    const/4 v0, 0x5

    goto/16 :goto_0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "@sinaweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@yahootw"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@naver"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@vmg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    if-ltz v2, :cond_1

    const/16 v3, 0xff

    if-gt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method static synthetic g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kl_pn_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->readData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getDeviceUuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "com.kunlun.platform.android.KunlunAppLogin"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPublicUname error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method private static getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-lez p0, :cond_0

    int-to-float v1, p0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    return-object v0
.end method

.method static synthetic h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mWidth:I

    return v0
.end method

.method static synthetic h(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 10

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->aN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x23

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, -0x777778

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v5, "#537fa8"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->aO()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->aP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1e

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v5, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, -0x777778

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const-string v6, "#537fa8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aQ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aR()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    const/16 v9, 0x1e

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v6, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, 0x0

    const/4 v6, 0x1

    const v7, -0x777778

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    const-string v6, "#537fa8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aQ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1e

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v2, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "#5d86b2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const-string v7, "#92acc9"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->aT()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v6, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    sub-double/2addr v6, v8

    double-to-int v3, v6

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v3, Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;

    invoke-direct {v3, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "#5d86b2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "#ffbb34"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->aU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v6, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    add-double/2addr v6, v8

    double-to-int v3, v6

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Lcom/kunlun/platform/widget/KunlunProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    return-object v0
.end method

.method static synthetic i(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 10

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aO:Lcom/kunlun/platform/android/KunlunEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aN:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->aW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x23

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHeight(I)V

    const-string v3, "#537fa8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/16 v5, 0x8

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, -0x777778

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v5, "#537fa8"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->aX()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunLang;->aY()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/16 v6, 0x9

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1e

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v5, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, -0x777778

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const-string v6, "#537fa8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->ba()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    const/16 v9, 0x1e

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v6, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v1

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v1, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, 0x0

    const/4 v6, 0x1

    const v7, -0x777778

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    const-string v6, "#537fa8"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->aZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/EditText;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunLang;->bb()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x9

    invoke-direct {p0, v9}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v9

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/widget/EditText;->setPadding(IIII)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1e

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v7

    const/16 v8, 0x1e

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-direct {p0, v2, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;Landroid/widget/EditText;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v3, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "#5d86b2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const-string v7, "#92acc9"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->bc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v6, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    sub-double/2addr v6, v8

    double-to-int v3, v6

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    new-instance v3, Lcom/kunlun/platform/android/KunlunLoginAppDialog$50;

    invoke-direct {v3, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog$50;-><init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, -0x2

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v3, 0x0

    const/16 v6, 0x14

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0, v3, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v3, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-direct {p0, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "#ffbb34"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-static {v3, v6, v7, v8}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->bd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-double v6, p2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    add-double/2addr v6, v8

    double-to-int v3, v6

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->b(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->bf()V

    return-void
.end method

.method static synthetic m(Lcom/kunlun/platform/android/KunlunLoginAppDialog;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aM:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kunlun/platform/android/Kunlun;->m:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/kunlun/platform/widget/BaseDialog;->dismiss()V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    const/4 v2, 0x3

    iget v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->aR:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/kunlun/platform/widget/BaseDialog;->onBackPressed()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kunlun/platform/android/Kunlun;->m:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->ab()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v5, 0xa

    const/4 v6, -0x1

    invoke-super {p0, p1}, Lcom/kunlun/platform/widget/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Lcom/kunlun/platform/widget/KunlunProgressDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mWidth:I

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v3

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v4

    invoke-direct {p0, v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->dip2px(I)I

    move-result v2

    invoke-static {v2, v8, v8, v6}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->getGradientDrawable(IIII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mContent:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->mWidth:I

    invoke-direct {p0, v0, v1}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/LinearLayout;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
