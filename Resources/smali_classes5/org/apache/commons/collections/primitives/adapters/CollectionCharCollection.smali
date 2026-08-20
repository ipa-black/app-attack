.class public final Lorg/apache/commons/collections/primitives/adapters/CollectionCharCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionCharCollection;
.source "CollectionCharCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _collection:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionCharCollection;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/CollectionCharCollection;->_collection:Ljava/util/Collection;

    return-void
.end method

.method public static wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/CharCollection;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 52
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/CollectionCharCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionCharCollection;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionCharCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionCharCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/CollectionCharCollection;->_collection:Ljava/util/Collection;

    return-object v0
.end method
