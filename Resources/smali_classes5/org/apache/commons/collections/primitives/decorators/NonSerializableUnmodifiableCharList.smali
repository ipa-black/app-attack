.class final Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableCharList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableCharList;
.source "NonSerializableUnmodifiableCharList.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/CharList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/CharList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableCharList;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableCharList;->proxied:Lorg/apache/commons/collections/primitives/CharList;

    return-void
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/CharList;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableCharList;->proxied:Lorg/apache/commons/collections/primitives/CharList;

    return-object v0
.end method
