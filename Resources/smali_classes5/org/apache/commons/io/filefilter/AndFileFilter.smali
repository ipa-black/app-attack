.class public Lorg/apache/commons/io/filefilter/AndFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "AndFileFilter.java"


# instance fields
.field private filter1:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field private filter2:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 46
    iput-object p1, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->filter1:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 47
    iput-object p2, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->filter2:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The filters must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->filter1:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->filter2:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->filter1:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/filefilter/AndFileFilter;->filter2:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
