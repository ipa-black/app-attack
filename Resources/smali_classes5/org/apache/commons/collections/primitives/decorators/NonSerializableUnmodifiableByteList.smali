.class final Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableByteList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableByteList;
.source "NonSerializableUnmodifiableByteList.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/ByteList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/ByteList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableByteList;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableByteList;->proxied:Lorg/apache/commons/collections/primitives/ByteList;

    return-void
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableByteList;->proxied:Lorg/apache/commons/collections/primitives/ByteList;

    return-object v0
.end method
