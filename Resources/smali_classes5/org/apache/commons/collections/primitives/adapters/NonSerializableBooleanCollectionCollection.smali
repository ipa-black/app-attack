.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableBooleanCollectionCollection;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;
.source "NonSerializableBooleanCollectionCollection.java"


# instance fields
.field private _collection:Lorg/apache/commons/collections/primitives/BooleanCollection;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/BooleanCollection;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanCollectionCollection;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableBooleanCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/BooleanCollection;

    return-void
.end method


# virtual methods
.method protected getBooleanCollection()Lorg/apache/commons/collections/primitives/BooleanCollection;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableBooleanCollectionCollection;->_collection:Lorg/apache/commons/collections/primitives/BooleanCollection;

    return-object v0
.end method
