.class final Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableDoubleList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableDoubleList;
.source "NonSerializableUnmodifiableDoubleList.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/DoubleList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/DoubleList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableDoubleList;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableDoubleList;->proxied:Lorg/apache/commons/collections/primitives/DoubleList;

    return-void
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/DoubleList;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableDoubleList;->proxied:Lorg/apache/commons/collections/primitives/DoubleList;

    return-object v0
.end method
