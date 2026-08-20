.class public final Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;
.source "BooleanCollectionCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/BooleanCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/BooleanCollection;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/BooleanCollection;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/BooleanCollection;)Ljava/util/Collection;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;-><init>(Lorg/apache/commons/collections/primitives/BooleanCollection;)V

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableBooleanCollectionCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableBooleanCollectionCollection;-><init>(Lorg/apache/commons/collections/primitives/BooleanCollection;)V

    return-object v0
.end method


# virtual methods
.method protected getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/BooleanCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/BooleanCollection;

    return-object v0
.end method
