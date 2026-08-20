.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableDoubleCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractDoubleCollectionCollection;
.source "NonSerializableDoubleCollectionCollection.java"


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/DoubleCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/DoubleCollection;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractDoubleCollectionCollection;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableDoubleCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/DoubleCollection;

    return-void
.end method


# virtual methods
.method protected getDoubleCollection()Lorg/apache/commons/collections/primitives/DoubleCollection;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableDoubleCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/DoubleCollection;

    return-object v0
.end method
