.class public final Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;
.source "CollectionBooleanCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _collection:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCollectionBooleanCollection;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;->_collection:Ljava/util/Collection;

    return-void
.end method

.method public static wrap(Ljava/util/Collection;)Lorg/apache/commons/collections/primitives/BooleanCollection;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionBooleanCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCollectionBooleanCollection;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method protected getCollection()Ljava/util/Collection;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/CollectionBooleanCollection;->_collection:Ljava/util/Collection;

    return-object v0
.end method
