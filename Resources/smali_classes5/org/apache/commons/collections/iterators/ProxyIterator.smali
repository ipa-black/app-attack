.class public Lorg/apache/commons/collections/iterators/ProxyIterator;
.super Ljava/lang/Object;
.source "ProxyIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ProxyIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ProxyIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyIterator;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ProxyIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method
