.class Lorg/apache/ldap/common/util/SequencedHashMap$2;
.super Ljava/util/AbstractCollection;
.source "SequencedHashMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/common/util/SequencedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/util/SequencedHashMap;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 606
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 579
    new-instance v0, Lorg/apache/ldap/common/util/SequencedHashMap$OrderedIterator;

    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/util/SequencedHashMap$OrderedIterator;-><init>(Lorg/apache/ldap/common/util/SequencedHashMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 586
    iget-object p1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-static {p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$100(Lorg/apache/ldap/common/util/SequencedHashMap;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object p1

    :cond_0
    iget-object p1, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$100(Lorg/apache/ldap/common/util/SequencedHashMap;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object v1

    if-eq p1, v1, :cond_3

    .line 587
    invoke-virtual {p1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 588
    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {p1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$000(Lorg/apache/ldap/common/util/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    return v0

    .line 593
    :cond_1
    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$100(Lorg/apache/ldap/common/util/SequencedHashMap;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object v1

    :cond_2
    iget-object v1, v1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v2, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-static {v2}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$100(Lorg/apache/ldap/common/util/SequencedHashMap;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 594
    invoke-virtual {v1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    iget-object p1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$000(Lorg/apache/ldap/common/util/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 609
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$2;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->size()I

    move-result v0

    return v0
.end method
