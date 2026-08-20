.class public final Lorg/apache/commons/collections/primitives/adapters/ShortListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;
.source "ShortListList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/ShortList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ShortList;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListList;->_list:Lorg/apache/commons/collections/primitives/ShortList;

    return-void
.end method

.method public static wrap(Lorg/apache/commons/collections/primitives/ShortList;)Ljava/util/List;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/ShortListList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/ShortListList;-><init>(Lorg/apache/commons/collections/primitives/ShortList;)V

    return-object v0

    .line 55
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortListList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortListList;-><init>(Lorg/apache/commons/collections/primitives/ShortList;)V

    return-object v0
.end method


# virtual methods
.method protected getShortList()Lorg/apache/commons/collections/primitives/ShortList;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/ShortListList;->_list:Lorg/apache/commons/collections/primitives/ShortList;

    return-object v0
.end method
