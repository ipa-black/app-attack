.class public final Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableCharList;
.source "UnmodifiableCharList.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/CharList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/CharList;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableCharList;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharList;->proxied:Lorg/apache/commons/collections/primitives/CharList;

    return-void
.end method

.method public static final wrap(Lorg/apache/commons/collections/primitives/CharList;)Lorg/apache/commons/collections/primitives/CharList;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharList;

    if-eqz v0, :cond_1

    return-object p0

    .line 39
    :cond_1
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharList;-><init>(Lorg/apache/commons/collections/primitives/CharList;)V

    return-object v0

    .line 42
    :cond_2
    new-instance v0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableCharList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableCharList;-><init>(Lorg/apache/commons/collections/primitives/CharList;)V

    return-object v0
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/CharList;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/UnmodifiableCharList;->proxied:Lorg/apache/commons/collections/primitives/CharList;

    return-object v0
.end method
