.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableCharListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractCharListList;
.source "NonSerializableCharListList.java"


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/CharList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/CharList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractCharListList;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCharListList;->_list:Lorg/apache/commons/collections/primitives/CharList;

    return-void
.end method


# virtual methods
.method protected getCharList()Lorg/apache/commons/collections/primitives/CharList;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableCharListList;->_list:Lorg/apache/commons/collections/primitives/CharList;

    return-object v0
.end method
