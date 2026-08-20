.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;
.source "NonSerializableShortCollectionCollection.java"


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/ShortCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ShortCollection;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/ShortCollection;

    return-void
.end method


# virtual methods
.method protected getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/ShortCollection;

    return-object v0
.end method
