.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableIntListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractIntListList;
.source "NonSerializableIntListList.java"


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/IntList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/IntList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractIntListList;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableIntListList;->_list:Lorg/apache/commons/collections/primitives/IntList;

    return-void
.end method


# virtual methods
.method protected getIntList()Lorg/apache/commons/collections/primitives/IntList;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableIntListList;->_list:Lorg/apache/commons/collections/primitives/IntList;

    return-object v0
.end method
