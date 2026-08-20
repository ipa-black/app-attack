.class public Lcom/explorestack/iab/vast/VastRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/VastRequest$Builder;,
        Lcom/explorestack/iab/vast/VastRequest$j;
    }
.end annotation


# static fields
.field public static final PARAMS_ERROR_CODE:Ljava/lang/String; = "params_error_code"

.field public static y:I = 0x5

.field public static final z:Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/explorestack/iab/CacheControl;

.field public c:Landroid/net/Uri;

.field public d:Lcom/explorestack/iab/vast/processor/VastAd;

.field public e:Ljava/lang/String;

.field public f:Lcom/explorestack/iab/vast/VideoType;

.field public g:Landroid/os/Bundle;

.field public h:Lcom/explorestack/iab/vast/processor/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/iab/vast/processor/b<",
            "Lcom/explorestack/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/explorestack/iab/vast/d;

.field public j:F

.field public k:F

.field public l:F

.field public m:Z

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public final w:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$f;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/VastRequest$f;-><init>()V

    sput-object v0, Lcom/explorestack/iab/vast/VastRequest;->z:Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/explorestack/iab/CacheControl;->FullLoad:Lcom/explorestack/iab/CacheControl;

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->b:Lcom/explorestack/iab/CacheControl;

    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->f:Lcom/explorestack/iab/vast/VideoType;

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/explorestack/iab/vast/VastRequest;->j:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/explorestack/iab/vast/VastRequest;->k:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/vast/VastRequest;->o:I

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->q:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->r:Z

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->s:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->t:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->u:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/explorestack/iab/vast/VastRequest;->v:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->a:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;F)F
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/vast/VastRequest;->l:F

    return p1
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;I)I
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/vast/VastRequest;->n:I

    return p1
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/CacheControl;
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->b:Lcom/explorestack/iab/CacheControl;

    return-object p1
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/processor/VastAd;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    return-object p0
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/b;)Lcom/explorestack/iab/vast/processor/b;
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->h:Lcom/explorestack/iab/vast/processor/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;Lcom/explorestack/iab/vast/processor/VastAd;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;Lcom/explorestack/iab/vast/processor/VastAd;Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->m:Z

    return p1
.end method

.method public static synthetic b(Lcom/explorestack/iab/vast/VastRequest;F)F
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/vast/VastRequest;->j:F

    return p1
.end method

.method public static synthetic b(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/CacheControl;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/VastRequest;->b:Lcom/explorestack/iab/CacheControl;

    return-object p0
.end method

.method public static synthetic b(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->p:Z

    return p1
.end method

.method public static synthetic c(Lcom/explorestack/iab/vast/VastRequest;F)F
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/vast/VastRequest;->k:F

    return p1
.end method

.method public static synthetic c(Lcom/explorestack/iab/vast/VastRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/VastRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic c(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->q:Z

    return p1
.end method

.method public static synthetic d(Lcom/explorestack/iab/vast/VastRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/VastRequest;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic d(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->r:Z

    return p1
.end method

.method public static synthetic e(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/d;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/VastRequest;->i:Lcom/explorestack/iab/vast/d;

    return-object p0
.end method

.method public static synthetic e(Lcom/explorestack/iab/vast/VastRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/VastRequest;->s:Z

    return p1
.end method

.method public static newBuilder()Lcom/explorestack/iab/vast/VastRequest$Builder;
    .locals 2

    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$Builder;

    new-instance v1, Lcom/explorestack/iab/vast/VastRequest;

    invoke-direct {v1}, Lcom/explorestack/iab/vast/VastRequest;-><init>()V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/vast/VastRequest$Builder;-><init>(Lcom/explorestack/iab/vast/VastRequest;)V

    return-object v0
.end method

.method public static setCacheSize(I)V
    .locals 0

    if-lez p0, :cond_0

    sput p0, Lcom/explorestack/iab/vast/VastRequest;->y:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/VastRequest;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    rsub-int p1, p1, 0xe6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, ":"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p2

    int-to-long v5, p2

    const/16 p2, 0x400

    new-array p2, p2, [B

    const-wide/16 v7, 0x0

    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v4, p2, v2, v9}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v9, v9

    add-long/2addr v7, v9

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    cmp-long p2, v5, v7

    if-nez p2, :cond_3

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "No dir for caching file"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->i:Lcom/explorestack/iab/vast/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$h;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/VastRequest$h;-><init>(Lcom/explorestack/iab/vast/VastRequest;)V

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/VastRequest;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VastRequest"

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/VastRequest;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v0, p1

    sget v1, Lcom/explorestack/iab/vast/VastRequest;->y:I

    if-le v0, v1, :cond_4

    array-length v0, p1

    new-array v0, v0, [Lcom/explorestack/iab/vast/VastRequest$j;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    new-instance v3, Lcom/explorestack/iab/vast/VastRequest$j;

    aget-object v4, p1, v2

    invoke-direct {v3, p0, v4}, Lcom/explorestack/iab/vast/VastRequest$j;-><init>(Lcom/explorestack/iab/vast/VastRequest;Ljava/io/File;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/explorestack/iab/vast/VastRequest$j;->b:Ljava/io/File;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget v0, Lcom/explorestack/iab/vast/VastRequest;->y:I

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_4

    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "VastRequest"

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendError, code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VastRequest"

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/explorestack/iab/vast/VastError;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/explorestack/iab/vast/VastRequest;->a(I)V

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$e;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/explorestack/iab/vast/VastRequest$e;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastErrorListener;Landroid/content/Context;I)V

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/explorestack/iab/vast/processor/VastAd;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 7

    const-string v0, "VastRequest"

    const/16 v1, 0x12d

    :try_start_0
    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_5

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_3

    :try_start_1
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v3, p1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget v5, p0, Lcom/explorestack/iab/vast/VastRequest;->n:I

    if-eqz v5, :cond_2

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->a()V

    const/16 p2, 0xca

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    goto :goto_4

    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->c:Landroid/net/Uri;

    invoke-virtual {p0, p2}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/processor/VastAd;)V

    invoke-virtual {p0, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequestListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p2

    :try_start_2
    invoke-static {v0, p2}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->a()V

    goto :goto_3

    :cond_3
    const-string p2, "empty thumbnail"

    :goto_2
    invoke-static {v0, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p2, "video file not supported"

    goto :goto_2

    :goto_3
    const/16 p2, 0x193

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    :goto_4
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;)V

    goto :goto_6

    :cond_5
    :goto_5
    const-string p2, "fileUri is null"

    invoke-static {v0, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->a()V

    invoke-virtual {p0, p1, v1, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string p2, "exception when to cache file"

    invoke-static {v0, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->a()V

    invoke-virtual {p0, p1, v1, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    :goto_6
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "VastRequest"

    const-string v1, "sendReady"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$d;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/iab/vast/VastRequest$d;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/VastRequestListener;)V

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized a(Lcom/explorestack/iab/vast/processor/VastAd;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->i:Lcom/explorestack/iab/vast/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$g;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/iab/vast/VastRequest$g;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastAd;)V

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->g:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->g:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->g:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/vast_rtb_cache/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public canDisplay()Z
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->w:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->b:Lcom/explorestack/iab/CacheControl;

    sget-object v1, Lcom/explorestack/iab/CacheControl;->FullLoad:Lcom/explorestack/iab/CacheControl;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->checkFile()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkFile()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->c:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->i:Lcom/explorestack/iab/vast/d;

    invoke-static {p0}, Lcom/explorestack/iab/vast/c;->a(Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method

.method public display(Landroid/content/Context;Lcom/explorestack/iab/vast/VideoType;Lcom/explorestack/iab/vast/VastActivityListener;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/explorestack/iab/vast/VastRequest;->display(Landroid/content/Context;Lcom/explorestack/iab/vast/VideoType;Lcom/explorestack/iab/vast/VastActivityListener;Lcom/explorestack/iab/vast/VastPlaybackListener;Lcom/explorestack/iab/measurer/VastAdMeasurer;)V

    return-void
.end method

.method public display(Landroid/content/Context;Lcom/explorestack/iab/vast/VideoType;Lcom/explorestack/iab/vast/VastActivityListener;Lcom/explorestack/iab/vast/VastPlaybackListener;Lcom/explorestack/iab/measurer/VastAdMeasurer;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "play"

    const-string v2, "VastRequest"

    invoke-static {v2, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->f:Lcom/explorestack/iab/vast/VideoType;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/explorestack/iab/vast/VastRequest;->o:I

    new-instance p2, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;

    invoke-direct {p2}, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;-><init>()V

    invoke-virtual {p2, p0}, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->setRequest(Lcom/explorestack/iab/vast/VastRequest;)Lcom/explorestack/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->setListener(Lcom/explorestack/iab/vast/VastActivityListener;)Lcom/explorestack/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->setPlaybackListener(Lcom/explorestack/iab/vast/VastPlaybackListener;)Lcom/explorestack/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    invoke-virtual {p2, p5}, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->setAdMeasurer(Lcom/explorestack/iab/measurer/VastAdMeasurer;)Lcom/explorestack/iab/vast/activity/VastActivity$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/vast/activity/VastActivity$Builder;->display(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    goto :goto_0

    :cond_1
    const-string p1, "vastAd is null; nothing to play"

    invoke-static {v2, p1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public display(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->f:Lcom/explorestack/iab/vast/VideoType;

    invoke-static {p0}, Lcom/explorestack/iab/vast/c;->b(Lcom/explorestack/iab/vast/VastRequest;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->display(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/Boolean;)Z

    goto :goto_0

    :cond_0
    const-string p1, "VastRequest"

    const-string v0, "vastAd is null; nothing to play"

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/VastRequest;->fireUrls(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public fireUrls(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->g:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object p2, Lcom/explorestack/iab/vast/VastRequest;->z:Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$b;

    invoke-static {p1, v0, p2}, Lcom/explorestack/iab/vast/VastUrlProcessorRegistry;->a(Ljava/util/List;Landroid/os/Bundle;Lcom/explorestack/iab/vast/VastUrlProcessorRegistry$b;)V

    goto :goto_0

    :cond_2
    const-string p1, "VastRequest"

    const-string p2, "Url list is null"

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getCacheControl()Lcom/explorestack/iab/CacheControl;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->b:Lcom/explorestack/iab/CacheControl;

    return-object v0
.end method

.method public getCompanionCloseTime()F
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->l:F

    return v0
.end method

.method public getFileUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public getForceOrientation()I
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->v:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDurationMillis()I
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->n:I

    return v0
.end method

.method public getPlaceholderTimeoutSec()F
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->j:F

    return v0
.end method

.method public getPreferredVideoOrientation()I
    .locals 2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->shouldUseScreenSizeForVideoOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/MediaFileTag;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/utils/Utils;->orientationBySize(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->o:I

    return v0
.end method

.method public getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    return-object v0
.end method

.method public getVideoCloseTime()F
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/vast/VastRequest;->k:F

    return v0
.end method

.method public getVideoType()Lcom/explorestack/iab/vast/VideoType;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->f:Lcom/explorestack/iab/vast/VideoType;

    return-object v0
.end method

.method public isAutoClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->p:Z

    return v0
.end method

.method public isForceUseNativeCloseTime()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->m:Z

    return v0
.end method

.method public isR1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->t:Z

    return v0
.end method

.method public isR2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->u:Z

    return v0
.end method

.method public loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadVideoWithData\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VastRequest"

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest$b;-><init>(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 p2, 0x12d

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    :goto_1
    return-void
.end method

.method public loadVideoWithDataSync(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 3

    new-instance v0, Lcom/explorestack/iab/vast/processor/c;

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->h:Lcom/explorestack/iab/vast/processor/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/explorestack/iab/vast/processor/a;

    invoke-direct {v1, p1}, Lcom/explorestack/iab/vast/processor/a;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-direct {v0, p0, v1}, Lcom/explorestack/iab/vast/processor/c;-><init>(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/b;)V

    invoke-virtual {v0, p2}, Lcom/explorestack/iab/vast/processor/c;->a(Ljava/lang/String;)Lcom/explorestack/iab/vast/processor/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/d;->b()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/d;->c()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {p2, p0}, Lcom/explorestack/iab/vast/processor/VastAd;->setVastRequest(Lcom/explorestack/iab/vast/VastRequest;)V

    iget-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->isAutoRotate()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->q:Z

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->r:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->q:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r:Z

    :cond_3
    :goto_0
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->getPostBannerTag()Lcom/explorestack/iab/vast/tags/PostBannerTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->getCloseTimeSec()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->getPostBannerTag()Lcom/explorestack/iab/vast/tags/PostBannerTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->getCloseTimeSec()F

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/vast/VastRequest;->l:F

    :cond_4
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->getCloseTimeSec()Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->getCloseTimeSec()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/vast/VastRequest;->k:F

    :cond_5
    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->isR1()Z

    move-result v1

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->t:Z

    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->isR2()Z

    move-result v1

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/VastRequest;->u:Z

    invoke-interface {p2}, Lcom/explorestack/iab/vast/a;->getForceOrientation()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/explorestack/iab/vast/VastRequest;->v:I

    :cond_6
    sget-object p2, Lcom/explorestack/iab/vast/VastRequest$i;->a:[I

    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest;->b:Lcom/explorestack/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v0, :cond_9

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-eq p2, v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequestListener;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Lcom/explorestack/iab/vast/VastRequestListener;)V

    goto :goto_2

    :cond_9
    :goto_1
    iget-object p2, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;Lcom/explorestack/iab/vast/processor/VastAd;Lcom/explorestack/iab/vast/VastRequestListener;)V

    :goto_2
    return-void
.end method

.method public loadVideoWithUrl(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadVideoWithUrl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VastRequest"

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$a;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/explorestack/iab/vast/VastRequest$a;-><init>(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/String;Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequestListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 p2, 0x12d

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    :goto_1
    return-void
.end method

.method public performCache(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->a()V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0, p2}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Lcom/explorestack/iab/vast/VastRequest$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/explorestack/iab/vast/VastRequest$c;-><init>(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequestListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/VastRequest;->a()V

    const/16 v0, 0x12d

    invoke-virtual {p0, p1, v0, p2}, Lcom/explorestack/iab/vast/VastRequest;->a(Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    :goto_0
    return-void
.end method

.method public sendError(I)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "params_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->d:Lcom/explorestack/iab/vast/processor/VastAd;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/processor/VastAd;->getErrorUrlList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/vast/VastRequest;->fireErrorUrls(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setVastFileLoadedListener(Lcom/explorestack/iab/vast/d;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest;->i:Lcom/explorestack/iab/vast/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public shouldPreloadCompanion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->s:Z

    return v0
.end method

.method public shouldUseScreenSizeForCompanionOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->r:Z

    return v0
.end method

.method public shouldUseScreenSizeForVideoOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/VastRequest;->q:Z

    return v0
.end method
