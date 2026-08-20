.class final Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortListList;
.super Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;
.source "NonSerializableShortListList.java"


# instance fields
.field private _list:Lorg/apache/commons/collections/primitives/ShortList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/primitives/ShortList;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/adapters/AbstractShortListList;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortListList;->_list:Lorg/apache/commons/collections/primitives/ShortList;

    return-void
.end method


# virtual methods
.method protected getShortList()Lorg/apache/commons/collections/primitives/ShortList;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/adapters/NonSerializableShortListList;->_list:Lorg/apache/commons/collections/primitives/ShortList;

    return-object v0
.end method
