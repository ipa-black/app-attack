.class public final Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractByteCollectionCollection;
.source "ByteCollectionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/ByteCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ByteCollection;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractByteCollectionCollection;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/ByteCollection;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/ByteCollection;)Ljava/util/Collection;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;-><init>(Lorg/apache/commons/collections/primitives/ByteCollection;)V

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableByteCollectionCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableByteCollectionCollection;-><init>(Lorg/apache/commons/collections/primitives/ByteCollection;)V

    return-object v0
.end method


# virtual methods
.method protected getByteCollection()Lorg/apache/commons/collections/primitives/ByteCollection;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ByteCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/ByteCollection;

    return-object v0
.end method
