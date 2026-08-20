.class Lcom/criteo/publisher/f0/o;
.super Ljava/lang/Object;
.source "MetricDirectory.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/criteo/publisher/n0/g;

.field private final c:Lcom/criteo/publisher/f0/q;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/n0/g;Lcom/criteo/publisher/f0/q;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/criteo/publisher/f0/o;->a:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/criteo/publisher/f0/o;->b:Lcom/criteo/publisher/n0/g;

    .line 52
    iput-object p3, p0, Lcom/criteo/publisher/f0/o;->c:Lcom/criteo/publisher/f0/q;

    return-void
.end method

.method private b(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".csm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Ljava/io/File;)Lcom/criteo/publisher/f0/d0;
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f0/o;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 81
    new-instance p1, Lcom/criteo/publisher/f0/d0;

    iget-object v2, p0, Lcom/criteo/publisher/f0/o;->c:Lcom/criteo/publisher/f0/q;

    invoke-direct {p1, v0, v1, v2}, Lcom/criteo/publisher/f0/d0;-><init>(Ljava/lang/String;Landroid/util/AtomicFile;Lcom/criteo/publisher/f0/q;)V

    return-object p1
.end method

.method a()Ljava/io/File;
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/criteo/publisher/f0/o;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/criteo/publisher/f0/o;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v1}, Lcom/criteo/publisher/n0/g;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Lcom/criteo/publisher/f0/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/criteo/publisher/f0/o;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method b()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/o;->a()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/criteo/publisher/f0/o$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/f0/o$a;-><init>(Lcom/criteo/publisher/f0/o;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
