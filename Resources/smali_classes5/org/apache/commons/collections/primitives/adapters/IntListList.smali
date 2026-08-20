.class public final Lorg/apache/commons/collections/primitives/adapters/IntListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractIntListList;
.source "IntListList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/IntList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/IntList;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractIntListList;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/IntListList;->_list:Lorg/apache/commons/collections/primitives/IntList;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/IntList;)Ljava/util/List;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/IntListList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/IntListList;-><init>(Lorg/apache/commons/collections/primitives/IntList;)V

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableIntListList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableIntListList;-><init>(Lorg/apache/commons/collections/primitives/IntList;)V

    return-object v0
.end method


# virtual methods
.method protected getIntList()Lorg/apache/commons/collections/primitives/IntList;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/IntListList;->_list:Lorg/apache/commons/collections/primitives/IntList;

    return-object v0
.end method
