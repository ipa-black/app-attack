.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableFloatCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractFloatCollectionCollection;
.source "NonSerializableFloatCollectionCollection.java"


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/FloatCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/FloatCollection;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractFloatCollectionCollection;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableFloatCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/FloatCollection;

    return-void
.end method


# virtual methods
.method protected getFloatCollection()Lorg/apache/commons/collections/primitives/FloatCollection;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableFloatCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/FloatCollection;

    return-object v0
.end method
