.class public final Lorg/apache/commons/collections/primitives/adapters/ShortCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;
.source "ShortCollectionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/ShortCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ShortCollection;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortCollectionCollection;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/ShortCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/ShortCollection;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/ShortCollection;)Ljava/util/Collection;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/ShortCollectionCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/ShortCollectionCollection;-><init>(Lorg/apache/commons/collections/primitives/ShortCollection;)V

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortCollectionCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortCollectionCollection;-><init>(Lorg/apache/commons/collections/primitives/ShortCollection;)V

    return-object v0
.end method


# virtual methods
.method protected getShortCollection()Lorg/apache/commons/collections/primitives/ShortCollection;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/ShortCollection;

    return-object v0
.end method
