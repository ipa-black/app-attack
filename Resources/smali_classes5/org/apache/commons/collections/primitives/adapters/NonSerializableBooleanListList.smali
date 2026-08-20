.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableBooleanListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanListList;
.source "NonSerializableBooleanListList.java"


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/BooleanList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/BooleanList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractBooleanListList;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableBooleanListList;->_list:Lorg/apache/commons/collections/primitives/BooleanList;

    return-void
.end method


# virtual methods
.method protected getBooleanList()Lorg/apache/commons/collections/primitives/BooleanList;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableBooleanListList;->_list:Lorg/apache/commons/collections/primitives/BooleanList;

    return-object v0
.end method
