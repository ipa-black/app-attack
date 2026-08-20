.class public final Lcom/appodeal/ads/utils/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/utils/l$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/ads/utils/l$a;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/File;

.field public d:Z

.field public e:Lcom/appodeal/ads/utils/l$b;

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/appodeal/ads/utils/l$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/appodeal/ads/utils/l$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/utils/l$a;-><init>(Lcom/appodeal/ads/utils/l;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-nez p1, :cond_0

    invoke-interface {p4}, Lcom/appodeal/ads/utils/l$b;->a()V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/appodeal/ads/utils/l;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/appodeal/ads/utils/l;->d:Z

    iput-object p4, p0, Lcom/appodeal/ads/utils/l;->e:Lcom/appodeal/ads/utils/l$b;

    invoke-static {p1}, Lcom/appodeal/ads/utils/p;->a(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/appodeal/ads/utils/l;->f:I

    invoke-static {p2, p3}, Lcom/appodeal/ads/utils/p;->a(IZ)I

    move-result p2

    iput p2, p0, Lcom/appodeal/ads/utils/l;->g:I

    invoke-static {p1}, Lcom/appodeal/ads/n5;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/appodeal/ads/n5;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/utils/l;->c:Ljava/io/File;

    :cond_1
    return-void
.end method

.method public static a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    array-length v3, p0

    invoke-static {p0, v0, v3, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x55

    invoke-virtual {p0, p1, v0, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v1

    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception p0

    move-object v1, v2

    :goto_1
    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5

    const/16 v0, 0x4e20

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1
    :try_start_1
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    new-instance v4, Lcom/appodeal/ads/utils/t;

    invoke-direct {v4, v3}, Lcom/appodeal/ads/utils/t;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :catch_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "http"

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    return-object p0
.end method

.method public static a(Ljava/io/File;[BLandroid/graphics/BitmapFactory$Options;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    array-length p0, p1

    invoke-static {p1, v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x55

    invoke-virtual {p0, p1, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    :goto_1
    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    return-void

    :goto_2
    move-object v2, v1

    :goto_3
    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->b:Ljava/lang/String;

    .line 1
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->b:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/utils/l;->b:Ljava/lang/String;

    .line 3
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v4, p0, Lcom/appodeal/ads/utils/l;->c:Ljava/io/File;

    const/high16 v5, 0x3fc00000    # 1.5f

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lcom/appodeal/ads/utils/l;->c:Ljava/io/File;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/appodeal/ads/n5;->a([B)[B

    move-result-object v8

    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v8}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v9}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    const/16 v9, 0x24

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 5
    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    iget-boolean v0, p0, Lcom/appodeal/ads/utils/l;->d:Z

    if-eqz v0, :cond_2

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :cond_3
    move-object v4, v6

    .line 10
    :cond_4
    :try_start_0
    invoke-static {v0}, Lcom/appodeal/ads/utils/l;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v6, 0x2000

    :try_start_2
    new-array v6, v6, [B

    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    invoke-virtual {v7, v6, v1, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    array-length v8, v6

    invoke-static {v6, v1, v8, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 11
    iget-boolean v8, p0, Lcom/appodeal/ads/utils/l;->d:Z

    if-eqz v8, :cond_8

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v8, v8

    int-to-float v9, v9

    div-float/2addr v8, v9

    cmpg-float v5, v8, v5

    if-ltz v5, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    iget-object v2, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :cond_7
    invoke-static {v7}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v7}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    goto/16 :goto_7

    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    :try_start_3
    invoke-static {v4, v6, v2}, Lcom/appodeal/ads/utils/l;->a(Ljava/io/File;[BLandroid/graphics/BitmapFactory$Options;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v4, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-eqz v4, :cond_c

    invoke-virtual {v4, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 15
    :cond_9
    iget v4, p0, Lcom/appodeal/ads/utils/l;->f:I

    iget v5, p0, Lcom/appodeal/ads/utils/l;->g:I

    .line 16
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_3
    div-int v10, v8, v3

    if-gt v10, v4, :cond_d

    div-int v10, v9, v3

    if-le v10, v5, :cond_a

    goto :goto_5

    .line 17
    :cond_a
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v6, v2}, Lcom/appodeal/ads/utils/l;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 18
    iget-object v3, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-eqz v3, :cond_c

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    .line 19
    :cond_b
    iget-object v2, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :cond_c
    :goto_4
    invoke-static {v7}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v7}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    goto :goto_7

    :cond_d
    :goto_5
    mul-int/lit8 v3, v3, 0x2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_9

    :catch_0
    move-exception v2

    move-object v6, v7

    goto :goto_6

    :catch_1
    move-exception v2

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v6

    :goto_6
    :try_start_4
    invoke-static {v2}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    .line 21
    iget-object v2, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 22
    :cond_e
    invoke-static {v6}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v6}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    :cond_f
    :goto_7
    return-void

    :catchall_2
    move-exception v1

    :goto_8
    move-object v7, v6

    :goto_9
    invoke-static {v7}, Lcom/appodeal/ads/n5;->a(Ljava/io/OutputStream;)V

    invoke-static {v7}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/appodeal/ads/n5;->a(Ljava/io/Closeable;)V

    throw v1

    .line 23
    :cond_10
    iget-object v0, p0, Lcom/appodeal/ads/utils/l;->a:Lcom/appodeal/ads/utils/l$a;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_11
    return-void
.end method
