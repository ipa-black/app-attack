.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableIntCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractIntCollectionCollection;
.source "NonSerializableIntCollectionCollection.java"


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/IntCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/IntCollection;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractIntCollectionCollection;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableIntCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/IntCollection;

    return-void
.end method


# virtual methods
.method protected getIntCollection()Lorg/apache/commons/collections/primitives/IntCollection;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableIntCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/IntCollection;

    return-object v0
.end method
