.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableLongCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractLongCollectionCollection;
.source "NonSerializableLongCollectionCollection.java"


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/LongCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/LongCollection;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractLongCollectionCollection;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableLongCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/LongCollection;

    return-void
.end method


# virtual methods
.method protected getLongCollection()Lorg/apache/commons/collections/primitives/LongCollection;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableLongCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/LongCollection;

    return-object v0
.end method
