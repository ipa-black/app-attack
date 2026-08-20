.class public final Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableByteList;
.source "UnmodifiableByteList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/ByteList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/ByteList;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableByteList;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteList;->proxied:Lorg/apache/commons/collections/primitives/ByteList;

    return-void
.end method

.method public static final wrap(Lorg/apache/commons/collections/primitives/ByteList;)Lorg/apache/commons/collections/primitives/ByteList;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteList;

    if-eqz v0, :cond_1

    return-object p0

    .line 39
    :cond_1
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteList;-><init>(Lorg/apache/commons/collections/primitives/ByteList;)V

    return-object v0

    .line 42
    :cond_2
    new-instance v0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableByteList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableByteList;-><init>(Lorg/apache/commons/collections/primitives/ByteList;)V

    return-object v0
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/ByteList;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteList;->proxied:Lorg/apache/commons/collections/primitives/ByteList;

    return-object v0
.end method
