.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableListFloatList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractListFloatList;
.source "NonSerializableListFloatList.java"


# instance fields
.field private _list:Ljava/util/List;


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractListFloatList;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableListFloatList;->_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getList()Ljava/util/List;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableListFloatList;->_list:Ljava/util/List;

    return-object v0
.end method
