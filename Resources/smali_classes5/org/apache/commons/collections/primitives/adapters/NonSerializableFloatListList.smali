.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableFloatListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractFloatListList;
.source "NonSerializableFloatListList.java"


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/FloatList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/FloatList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractFloatListList;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableFloatListList;->_list:Lorg/apache/commons/collections/primitives/FloatList;

    return-void
.end method


# virtual methods
.method protected getFloatList()Lorg/apache/commons/collections/primitives/FloatList;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableFloatListList;->_list:Lorg/apache/commons/collections/primitives/FloatList;

    return-object v0
.end method
