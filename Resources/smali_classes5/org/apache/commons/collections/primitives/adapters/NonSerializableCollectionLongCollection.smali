.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionLongCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionLongCollection;
.source "NonSerializableCollectionLongCollection.java"


# instance fields
.field private _collection:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionLongCollection;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionLongCollection;->_collection:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionLongCollection;->_collection:Ljava/util/Collection;

    return-object v0
.end method
