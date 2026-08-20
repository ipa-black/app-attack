.class public final Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatIterator;
.super Lorg/apache/commons/collections/primitives/decorators/ProxyFloatIterator;
.source "UnmodifiableFloatIterator.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/FloatIterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/FloatIterator;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatIterator;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatIterator;->proxied:Lorg/apache/commons/collections/primitives/FloatIterator;

    return-void
.end method

.method public static final wrap(Lorg/apache/commons/collections/primitives/FloatIterator;)Lorg/apache/commons/collections/primitives/FloatIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatIterator;

    if-eqz v0, :cond_1

    return-object p0

    .line 46
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatIterator;-><init>(Lorg/apache/commons/collections/primitives/FloatIterator;)V

    return-object v0
.end method


# virtual methods
.method protected getIterator()Lorg/apache/commons/collections/primitives/FloatIterator;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatIterator;->proxied:Lorg/apache/commons/collections/primitives/FloatIterator;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This FloatIterator is not modifiable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
