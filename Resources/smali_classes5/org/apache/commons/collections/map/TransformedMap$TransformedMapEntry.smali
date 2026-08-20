.class Lorg/apache/commons/collections/map/TransformedMap$TransformedMapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;
.source "TransformedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/TransformedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransformedMapEntry"
.end annotation


# instance fields
.field private final valueTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/Transformer;)V
    .locals 0

    .line 267
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    .line 268
    iput-object p2, p0, Lorg/apache/commons/collections/map/TransformedMap$TransformedMapEntry;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 272
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap$TransformedMapEntry;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
