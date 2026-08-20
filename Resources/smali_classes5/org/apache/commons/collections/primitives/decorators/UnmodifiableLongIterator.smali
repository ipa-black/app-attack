.class public final Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongIterator;
.super Lorg/apache/commons/collections/primitives/decorators/ProxyLongIterator;
.source "UnmodifiableLongIterator.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/LongIterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/LongIterator;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyLongIterator;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongIterator;->proxied:Lorg/apache/commons/collections/primitives/LongIterator;

    return-void
.end method

.method public static final wrap(Lorg/apache/commons/collections/primitives/LongIterator;)Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongIterator;

    if-eqz v0, :cond_1

    return-object p0

    .line 46
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongIterator;-><init>(Lorg/apache/commons/collections/primitives/LongIterator;)V

    return-object v0
.end method


# virtual methods
.method protected getIterator()Lorg/apache/commons/collections/primitives/LongIterator;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableLongIterator;->proxied:Lorg/apache/commons/collections/primitives/LongIterator;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This LongIterator is not modifiable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
