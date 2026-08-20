.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableDoubleListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractDoubleListList;
.source "NonSerializableDoubleListList.java"


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/DoubleList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/DoubleList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractDoubleListList;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableDoubleListList;->_list:Lorg/apache/commons/collections/primitives/DoubleList;

    return-void
.end method


# virtual methods
.method protected getDoubleList()Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableDoubleListList;->_list:Lorg/apache/commons/collections/primitives/DoubleList;

    return-object v0
.end method
