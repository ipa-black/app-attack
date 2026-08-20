.class Lorg/apache/commons/collections/map/ReferenceMap$Entry;
.super Ljava/lang/Object;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;

.field next:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

.field private final synthetic this$0:Lorg/apache/commons/collections/map/ReferenceMap;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/ReferenceMap;Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/commons/collections/map/ReferenceMap$Entry;)V
    .locals 0

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    .line 800
    iput-object p2, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->key:Ljava/lang/Object;

    .line 801
    iput p3, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->hash:I

    .line 802
    iput-object p4, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->value:Ljava/lang/Object;

    .line 803
    iput-object p5, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/map/ReferenceMap$Entry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 827
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 831
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 832
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 833
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz v1, :cond_4

    if-nez p1, :cond_2

    goto :goto_1

    .line 837
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 807
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$300(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->key:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 811
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$400(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->value:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 841
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 842
    iget v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->hash:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .locals 1

    .line 850
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$300(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 851
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$400(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->value:Ljava/lang/Object;

    if-ne v0, p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 853
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$300(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_2

    .line 854
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 856
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$400(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_3

    .line 857
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    goto :goto_2

    .line 858
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/map/ReferenceMap;->access$600(Lorg/apache/commons/collections/map/ReferenceMap;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 859
    iput-object v0, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->value:Ljava/lang/Object;

    :cond_4
    :goto_2
    return p1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 815
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 816
    iget-object v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/map/ReferenceMap;->access$400(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v1

    if-lez v1, :cond_0

    .line 817
    iget-object v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 819
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/map/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/map/ReferenceMap;->access$400(Lorg/apache/commons/collections/map/ReferenceMap;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->hash:I

    invoke-static {v1, v2, p1, v3}, Lorg/apache/commons/collections/map/ReferenceMap;->access$500(Lorg/apache/commons/collections/map/ReferenceMap;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 846
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
