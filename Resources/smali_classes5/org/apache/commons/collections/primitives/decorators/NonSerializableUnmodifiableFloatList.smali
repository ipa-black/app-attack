.class final Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableFloatList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableFloatList;
.source "NonSerializableUnmodifiableFloatList.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/FloatList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/FloatList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableFloatList;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableFloatList;->proxied:Lorg/apache/commons/collections/primitives/FloatList;

    return-void
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/FloatList;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableFloatList;->proxied:Lorg/apache/commons/collections/primitives/FloatList;

    return-object v0
.end method
