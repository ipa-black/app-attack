.class final Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableShortList;
.super Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableShortList;
.source "NonSerializableUnmodifiableShortList.java"


# instance fields
.field private proxied:Lorg/apache/commons/collections/primitives/ShortList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/primitives/ShortList;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/commons/collections/primitives/decorators/BaseUnmodifiableShortList;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableShortList;->proxied:Lorg/apache/commons/collections/primitives/ShortList;

    return-void
.end method


# virtual methods
.method protected getProxiedList()Lorg/apache/commons/collections/primitives/ShortList;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/collections/primitives/decorators/NonSerializableUnmodifiableShortList;->proxied:Lorg/apache/commons/collections/primitives/ShortList;

    return-object v0
.end method
