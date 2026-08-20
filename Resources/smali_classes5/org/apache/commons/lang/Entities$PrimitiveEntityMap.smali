.class Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lorg/apache/commons/lang/Entities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrimitiveEntityMap"
.end annotation


# instance fields
.field private mapNameToValue:Ljava/util/Map;

.field private mapValueToName:Lorg/apache/commons/lang/IntHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    .line 421
    new-instance v0, Lorg/apache/commons/lang/IntHashMap;

    invoke-direct {v0}, Lorg/apache/commons/lang/IntHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapValueToName:Lorg/apache/commons/lang/IntHashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 2

    .line 424
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapValueToName:Lorg/apache/commons/lang/IntHashMap;

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/lang/IntHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public name(I)Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapValueToName:Lorg/apache/commons/lang/IntHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/IntHashMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public value(Ljava/lang/String;)I
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;->mapNameToValue:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 436
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
