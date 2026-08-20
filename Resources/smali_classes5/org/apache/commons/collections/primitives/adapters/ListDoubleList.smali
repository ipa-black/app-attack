.class public Lorg/apache/commons/collections/primitives/adapters/ListDoubleList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractListDoubleList;
.source "ListDoubleList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListDoubleList;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/ListDoubleList;->_list:Ljava/util/List;

    return-void
.end method

.method public static wrap(Ljava/util/List;)Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/ListDoubleList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/ListDoubleList;-><init>(Ljava/util/List;)V

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableListDoubleList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableListDoubleList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method protected getList()Ljava/util/List;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ListDoubleList;->_list:Ljava/util/List;

    return-object v0
.end method
