.class final Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableIntList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableIntList;
.source "NonSerializableUnmodifiableIntList.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/IntList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/IntList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableIntList;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableIntList;->proxied:Lorg/apache/commons/collections/primitives/IntList;

    return-void
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/IntList;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableIntList;->proxied:Lorg/apache/commons/collections/primitives/IntList;

    return-object v0
.end method
