.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionBooleanCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;
.source "NonSerializableCollectionBooleanCollection.java"


# instance fields
.field private _collection:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionBooleanCollection;->_collection:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionBooleanCollection;->_collection:Ljava/util/Collection;

    return-object v0
.end method
