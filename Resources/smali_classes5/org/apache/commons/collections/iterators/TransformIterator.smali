.class public Lorg/apache/commons/collections/iterators/TransformIterator;
.super Ljava/lang/Object;
.source "TransformIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;

.field private transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    .line 108
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public getTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/TransformIterator;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public setTransformer(Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method

.method protected transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
