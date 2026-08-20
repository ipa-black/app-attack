.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableByteCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractByteCollectionCollection;
.source "NonSerializableByteCollectionCollection.java"


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/ByteCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ByteCollection;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractByteCollectionCollection;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableByteCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/ByteCollection;

    return-void
.end method


# virtual methods
.method protected getByteCollection()Lorg/apache/commons/collections/primitives/ByteCollection;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableByteCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/ByteCollection;

    return-object v0
.end method
