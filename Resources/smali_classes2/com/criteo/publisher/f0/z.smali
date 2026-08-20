.class public Lcom/criteo/publisher/f0/z;
.super Ljava/lang/Object;
.source "ObjectQueueFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/f0/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/criteo/publisher/n0/l;

.field private final d:Lcom/criteo/publisher/f0/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/a0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/n0/l;Lcom/criteo/publisher/f0/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/criteo/publisher/n0/l;",
            "Lcom/criteo/publisher/f0/a0<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/z;->a:Lcom/criteo/publisher/logging/g;

    .line 55
    iput-object p1, p0, Lcom/criteo/publisher/f0/z;->b:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/criteo/publisher/f0/z;->c:Lcom/criteo/publisher/n0/l;

    .line 57
    iput-object p3, p0, Lcom/criteo/publisher/f0/z;->d:Lcom/criteo/publisher/f0/a0;

    return-void
.end method

.method private a(Ljava/io/File;)Lcom/squareup/tape/ObjectQueue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/squareup/tape/ObjectQueue<",
            "TT;>;"
        }
    .end annotation

    .line 74
    :try_start_0
    new-instance v0, Lcom/squareup/tape/FileObjectQueue;

    new-instance v1, Lcom/criteo/publisher/f0/z$a;

    iget-object v2, p0, Lcom/criteo/publisher/f0/z;->c:Lcom/criteo/publisher/n0/l;

    iget-object v3, p0, Lcom/criteo/publisher/f0/z;->d:Lcom/criteo/publisher/f0/a0;

    .line 76
    invoke-interface {v3}, Lcom/criteo/publisher/f0/a0;->b()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/f0/z$a;-><init>(Lcom/criteo/publisher/n0/l;Ljava/lang/Class;)V

    invoke-direct {v0, p1, v1}, Lcom/squareup/tape/FileObjectQueue;-><init>(Ljava/io/File;Lcom/squareup/tape/FileObjectQueue$Converter;)V

    .line 80
    invoke-virtual {v0}, Lcom/squareup/tape/FileObjectQueue;->peek()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 89
    :goto_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f0/z;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    :try_start_1
    new-instance v1, Lcom/squareup/tape/FileObjectQueue;

    new-instance v2, Lcom/criteo/publisher/f0/z$a;

    iget-object v3, p0, Lcom/criteo/publisher/f0/z;->c:Lcom/criteo/publisher/n0/l;

    iget-object v4, p0, Lcom/criteo/publisher/f0/z;->d:Lcom/criteo/publisher/f0/a0;

    .line 95
    invoke-interface {v4}, Lcom/criteo/publisher/f0/a0;->b()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/criteo/publisher/f0/z$a;-><init>(Lcom/criteo/publisher/n0/l;Ljava/lang/Class;)V

    invoke-direct {v1, p1, v2}, Lcom/squareup/tape/FileObjectQueue;-><init>(Ljava/io/File;Lcom/squareup/tape/FileObjectQueue$Converter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    iget-object p1, p0, Lcom/criteo/publisher/f0/z;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v0}, Lcom/criteo/publisher/f0/c0;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 98
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    iget-object p1, p0, Lcom/criteo/publisher/f0/z;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v0}, Lcom/criteo/publisher/f0/c0;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lcom/criteo/publisher/f0/z;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {v0}, Lcom/criteo/publisher/f0/c0;->a(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    .line 101
    throw p1

    .line 105
    :cond_0
    :goto_2
    new-instance p1, Lcom/squareup/tape/InMemoryObjectQueue;

    invoke-direct {p1}, Lcom/squareup/tape/InMemoryObjectQueue;-><init>()V

    return-object p1
.end method

.method private b(Ljava/io/File;)Z
    .locals 5

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 112
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 113
    invoke-direct {p0, v4}, Lcom/criteo/publisher/f0/z;->b(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a()Lcom/squareup/tape/ObjectQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/tape/ObjectQueue<",
            "TT;>;"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/z;->b()Ljava/io/File;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/criteo/publisher/f0/z;->a(Ljava/io/File;)Lcom/squareup/tape/ObjectQueue;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 3

    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/criteo/publisher/f0/z;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/f0/z;->d:Lcom/criteo/publisher/f0/a0;

    invoke-interface {v2}, Lcom/criteo/publisher/f0/a0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
