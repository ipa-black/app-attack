.class public final Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteListIterator;
.super Lorg/apache/commons/collections/primitives/decorators/ProxyByteListIterator;
.source "UnmodifiableByteListIterator.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/ByteListIterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/ByteListIterator;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyByteListIterator;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteListIterator;->proxied:Lorg/apache/commons/collections/primitives/ByteListIterator;

    return-void
.end method

.method public static final wrap(Lorg/apache/commons/collections/primitives/ByteListIterator;)Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteListIterator;

    if-eqz v0, :cond_1

    return-object p0

    .line 55
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteListIterator;-><init>(Lorg/apache/commons/collections/primitives/ByteListIterator;)V

    return-object v0
.end method


# virtual methods
.method public add(B)V
    .locals 1

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This ByteListIterator is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getListIterator()Lorg/apache/commons/collections/primitives/ByteListIterator;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableByteListIterator;->proxied:Lorg/apache/commons/collections/primitives/ByteListIterator;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This ByteListIterator is not modifiable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(B)V
    .locals 1

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This ByteListIterator is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
