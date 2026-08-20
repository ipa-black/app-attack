.class public Lorg/apache/commons/io/filefilter/NotFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "NotFileFilter.java"


# instance fields
.field private filter:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The filter must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/NotFileFilter;->filter:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
