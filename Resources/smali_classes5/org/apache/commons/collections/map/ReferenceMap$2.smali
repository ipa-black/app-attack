.class Lorg/apache/commons/collections/map/ReferenceMap$2;
.super Ljava/util/AbstractSet;
.source "ReferenceMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/commons/collections/map/ReferenceMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ReferenceMap;)V
    .locals 0

    .line 738
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 731
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 721
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ReferenceMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 717
    new-instance v0, Lorg/apache/commons/collections/map/ReferenceMap$KeyIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ReferenceMap$KeyIterator;-><init>(Lorg/apache/commons/collections/map/ReferenceMap;Lorg/apache/commons/collections/map/ReferenceMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    .line 713
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 735
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/ReferenceMap$2;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$2;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 740
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 741
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
