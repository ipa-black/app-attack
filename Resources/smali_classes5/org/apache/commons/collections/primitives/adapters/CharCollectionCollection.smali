.class public final Lorg/apache/commons/collections/primitives/adapters/CharCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractCharCollectionCollection;
.source "CharCollectionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/CharCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/CharCollection;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCharCollectionCollection;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/CharCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/CharCollection;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/CharCollection;)Ljava/util/Collection;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/CharCollectionCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/CharCollectionCollection;-><init>(Lorg/apache/commons/collections/primitives/CharCollection;)V

    return-object v0

    .line 56
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCharCollectionCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCharCollectionCollection;-><init>(Lorg/apache/commons/collections/primitives/CharCollection;)V

    return-object v0
.end method


# virtual methods
.method protected getCharCollection()Lorg/apache/commons/collections/primitives/CharCollection;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/CharCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/CharCollection;

    return-object v0
.end method
