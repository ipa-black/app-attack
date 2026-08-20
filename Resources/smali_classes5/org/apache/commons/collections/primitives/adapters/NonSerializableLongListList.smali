.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableLongListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractLongListList;
.source "NonSerializableLongListList.java"


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/LongList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/LongList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractLongListList;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableLongListList;->_list:Lorg/apache/commons/collections/primitives/LongList;

    return-void
.end method


# virtual methods
.method protected getLongList()Lorg/apache/commons/collections/primitives/LongList;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableLongListList;->_list:Lorg/apache/commons/collections/primitives/LongList;

    return-object v0
.end method
