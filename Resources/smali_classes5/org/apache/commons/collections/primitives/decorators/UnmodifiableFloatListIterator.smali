.class public final Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;
.super Lorg/apache/commons/collections/primitives/decorators/ProxyFloatListIterator;
.source "UnmodifiableFloatListIterator.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/FloatListIterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/FloatListIterator;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/ProxyFloatListIterator;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;->proxied:Lorg/apache/commons/collections/primitives/FloatListIterator;

    return-void
.end method

.method public static final wrap(Lorg/apache/commons/collections/primitives/FloatListIterator;)Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;

    if-eqz v0, :cond_1

    return-object p0

    .line 55
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;-><init>(Lorg/apache/commons/collections/primitives/FloatListIterator;)V

    return-object v0
.end method


# virtual methods
.method public add(F)V
    .locals 1

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This FloatListIterator is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getListIterator()Lorg/apache/commons/collections/primitives/FloatListIterator;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableFloatListIterator;->proxied:Lorg/apache/commons/collections/primitives/FloatListIterator;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This FloatListIterator is not modifiable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(F)V
    .locals 1

    .line 41
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This FloatListIterator is not modifiable."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
