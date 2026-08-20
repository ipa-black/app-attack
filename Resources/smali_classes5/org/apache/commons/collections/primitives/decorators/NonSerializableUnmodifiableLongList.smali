.class final Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableLongList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableLongList;
.source "NonSerializableUnmodifiableLongList.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/LongList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/LongList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableLongList;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableLongList;->proxied:Lorg/apache/commons/collections/primitives/LongList;

    return-void
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/LongList;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableLongList;->proxied:Lorg/apache/commons/collections/primitives/LongList;

    return-object v0
.end method
