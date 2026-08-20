.class final Lorg/apache/oro/util/GenericCacheEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field _index:I

.field _key:Ljava/lang/Object;

.field _value:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/oro/util/GenericCacheEntry;->_index:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/oro/util/GenericCacheEntry;->_value:Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/oro/util/GenericCacheEntry;->_key:Ljava/lang/Object;

    return-void
.end method
