.class Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;
.super Ljava/lang/Object;
.source "RandomAccessCharList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/primitives/RandomAccessCharList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComodChecker"
.end annotation


# instance fields
.field private _expectedModCount:I

.field private _source:Lorg/apache/commons/collections/primitives/RandomAccessCharList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/RandomAccessCharList;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 210
    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->_expectedModCount:I

    .line 191
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->_source:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->resyncModCount()V

    return-void
.end method


# virtual methods
.method protected assertNotComodified()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .line 200
    iget v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->_expectedModCount:I

    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->getModCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method protected getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->_source:Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    return-object v0
.end method

.method protected resyncModCount()V
    .locals 1

    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->getList()Lorg/apache/commons/collections/primitives/RandomAccessCharList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/primitives/RandomAccessCharList;->getModCount()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/primitives/RandomAccessCharList$ComodChecker;->_expectedModCount:I

    return-void
.end method
