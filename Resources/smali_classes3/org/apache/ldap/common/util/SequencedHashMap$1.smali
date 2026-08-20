.class Lorg/apache/ldap/common/util/SequencedHashMap$1;
.super Ljava/util/AbstractSet;
.source "SequencedHashMap.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/ldap/common/util/SequencedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/util/SequencedHashMap;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$1;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 557
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$1;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 566
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$1;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 563
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$1;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 548
    new-instance v0, Lorg/apache/ldap/common/util/SequencedHashMap$OrderedIterator;

    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap$1;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/util/SequencedHashMap$OrderedIterator;-><init>(Lorg/apache/ldap/common/util/SequencedHashMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 551
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$1;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-static {v0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->access$000(Lorg/apache/ldap/common/util/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

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

    .line 560
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap$1;->this$0:Lorg/apache/ldap/common/util/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->size()I

    move-result v0

    return v0
.end method
