.class public abstract Lcom/pgl/ssdk/G;
.super Ljava/lang/Object;
.source "MyBaseRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:[B

.field private f:I

.field private g:[B

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/net/HttpURLConnection;

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/pgl/ssdk/G;->b:Ljava/lang/String;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/pgl/ssdk/G;->f:I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/pgl/ssdk/G;->g:[B

    const/16 v1, 0x2710

    .line 8
    iput v1, p0, Lcom/pgl/ssdk/G;->h:I

    const/4 v1, 0x2

    .line 9
    iput v1, p0, Lcom/pgl/ssdk/G;->i:I

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/pgl/ssdk/G;->j:I

    .line 15
    iput-boolean v1, p0, Lcom/pgl/ssdk/G;->k:Z

    .line 27
    iput-object v0, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    .line 172
    new-instance v0, Lcom/pgl/ssdk/G$a;

    invoke-direct {v0, p0}, Lcom/pgl/ssdk/G$a;-><init>(Lcom/pgl/ssdk/G;)V

    iput-object v0, p0, Lcom/pgl/ssdk/G;->m:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object p2, p1

    .line 177
    :cond_1
    iput-object p2, p0, Lcom/pgl/ssdk/G;->a:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string p1, "application/json; charset=utf-8"

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sessionid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pgl/ssdk/G;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "zh"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ","

    const-string v2, "Accept-Language"

    if-eqz v0, :cond_3

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ";q=0.9"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ";q=0.9,en-US;q=0.6,en;q=0.4"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {v0, v2, p1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void
.end method

.method private a()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 16
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/pgl/ssdk/G;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    iget-boolean v3, p0, Lcom/pgl/ssdk/G;->k:Z

    if-eqz v3, :cond_0

    const-string v3, "TLS"

    .line 20
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 22
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    .line 28
    :goto_0
    iget-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/ssdk/G;->h:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 29
    iget-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    iget v3, p0, Lcom/pgl/ssdk/G;->h:I

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 30
    iget v2, p0, Lcom/pgl/ssdk/G;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    const-string v2, "GET"

    goto :goto_1

    :cond_1
    const-string v2, "TRACE"

    goto :goto_1

    :cond_2
    const-string v2, "HEAD"

    goto :goto_1

    :cond_3
    const-string v2, "DELETE"

    goto :goto_1

    :cond_4
    const-string v2, "PUT"

    goto :goto_1

    :cond_5
    const-string v2, "POST"

    .line 31
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    iget v2, p0, Lcom/pgl/ssdk/G;->d:I

    invoke-direct {p0, v2}, Lcom/pgl/ssdk/G;->a(I)V

    .line 33
    iget-object v2, p0, Lcom/pgl/ssdk/G;->e:[B

    if-eqz v2, :cond_6

    array-length v2, v2

    if-lez v2, :cond_6

    .line 34
    iget-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 35
    iget-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 36
    iget-object v4, p0, Lcom/pgl/ssdk/G;->e:[B

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 37
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 38
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 41
    :cond_6
    iget-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    :try_start_2
    iget-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, p0, Lcom/pgl/ssdk/G;->f:I

    .line 46
    iget-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    :try_start_3
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    .line 48
    new-array v6, v5, [B

    .line 50
    :goto_2
    invoke-virtual {v2, v6, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_7

    .line 51
    invoke-virtual {v4, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 53
    :cond_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 54
    iput-object v4, p0, Lcom/pgl/ssdk/G;->g:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_0
    move-object v2, v0

    :catchall_1
    if-eqz v2, :cond_8

    goto :goto_3

    .line 70
    :cond_8
    :goto_4
    iget-object v1, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_a

    goto :goto_5

    .line 77
    :catchall_2
    iget-object v2, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    move v3, v1

    move-object v1, v2

    .line 71
    :goto_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    iput-object v0, p0, Lcom/pgl/ssdk/G;->l:Ljava/net/HttpURLConnection;

    :cond_a
    move v1, v3

    :goto_6
    if-eqz v1, :cond_b

    .line 83
    iget v0, p0, Lcom/pgl/ssdk/G;->f:I

    iget-object v2, p0, Lcom/pgl/ssdk/G;->g:[B

    invoke-virtual {p0, v0, v2}, Lcom/pgl/ssdk/G;->a(I[B)Z

    :cond_b
    return v1
.end method

.method static synthetic a(Lcom/pgl/ssdk/G;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pgl/ssdk/G;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/pgl/ssdk/G;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/pgl/ssdk/G;->j:I

    return p0
.end method

.method static synthetic c(Lcom/pgl/ssdk/G;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/pgl/ssdk/G;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pgl/ssdk/G;->j:I

    return v0
.end method

.method static synthetic d(Lcom/pgl/ssdk/G;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/pgl/ssdk/G;->i:I

    return p0
.end method


# virtual methods
.method public a(II[B)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/pgl/ssdk/G;->c:I

    .line 88
    iput p2, p0, Lcom/pgl/ssdk/G;->d:I

    .line 89
    iput-object p3, p0, Lcom/pgl/ssdk/G;->e:[B

    .line 90
    iget-object p1, p0, Lcom/pgl/ssdk/G;->m:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 91
    invoke-static {}, Lcom/pgl/ssdk/M;->a()Lcom/pgl/ssdk/M;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pgl/ssdk/M;->b()Lcom/pgl/ssdk/Q;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public abstract a(I[B)Z
.end method
