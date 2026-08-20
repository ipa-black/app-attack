.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableCharCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractCharCollectionCollection;
.source "NonSerializableCharCollectionCollection.java"


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/CharCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/CharCollection;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCharCollectionCollection;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCharCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/CharCollection;

    return-void
.end method


# virtual methods
.method protected getCharCollection()Lorg/apache/commons/collections/primitives/CharCollection;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCharCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/CharCollection;

    return-object v0
.end method
