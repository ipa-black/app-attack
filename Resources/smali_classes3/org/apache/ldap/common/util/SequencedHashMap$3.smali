.class Lorg/apache/ldap/common/util/SequencedHashMap$3;
.super Ljava/util/AbstractSet;
.source "SequencedHashMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/common/util/SequencedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/util/SequencedHashMap;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$3;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method private findEntry(Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 629
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    return-object v0

    .line 632
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 633
    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$3;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-static {v1}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$200(Lorg/apache/ldap/common/util/SequencedHashMap;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eqz v1, :cond_2

    .line 634
    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$3;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 663
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap$3;->findEntry(Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 660
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$3;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 642
    new-instance v0, Lorg/apache/ldap/common/util/SequencedHashMap$OrderedIterator;

    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$3;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/util/SequencedHashMap$OrderedIterator;-><init>(Lorg/apache/ldap/common/util/SequencedHashMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 645
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap$3;->findEntry(Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 649
    :cond_0
    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$3;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {p1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$000(Lorg/apache/ldap/common/util/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$3;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->size()I

    move-result v0

    return v0
.end method
