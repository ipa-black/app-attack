.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableByteListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractByteListList;
.source "NonSerializableByteListList.java"


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/ByteList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ByteList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractByteListList;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableByteListList;->_list:Lorg/apache/commons/collections/primitives/ByteList;

    return-void
.end method


# virtual methods
.method protected getByteList()Lorg/apache/commons/collections/primitives/ByteList;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableByteListList;->_list:Lorg/apache/commons/collections/primitives/ByteList;

    return-object v0
.end method
