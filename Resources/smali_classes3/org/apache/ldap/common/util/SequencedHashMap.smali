.class public Lorg/apache/ldap/common/util/SequencedHashMap;
.super Ljava/lang/Object;
.source "SequencedHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/common/util/SequencedHashMap$OrderedIterator;,
        Lorg/apache/ldap/common/util/SequencedHashMap$Entry;
    }
.end annotation


# static fields
.field private static final ENTRY:I = 0x2

.field private static final KEY:I = 0x0

.field private static final REMOVED_MASK:I = -0x80000000

.field private static final VALUE:I = 0x1

.field private static final serialVersionUID:J = 0x2eea2293a9222612L


# instance fields
.field private entries:Ljava/util/HashMap;

.field private transient modCount:J

.field private sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    .line 154
    invoke-static {}, Lorg/apache/ldap/common/util/SequencedHashMap;->createSentinel()Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    .line 167
    invoke-static {}, Lorg/apache/ldap/common/util/SequencedHashMap;->createSentinel()Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    .line 182
    invoke-static {}, Lorg/apache/ldap/common/util/SequencedHashMap;->createSentinel()Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;-><init>()V

    .line 193
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ldap/common/util/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->removeImpl(Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/ldap/common/util/SequencedHashMap;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/ldap/common/util/SequencedHashMap;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/ldap/common/util/SequencedHashMap;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    return-wide v0
.end method

.method private static final createSentinel()Lorg/apache/ldap/common/util/SequencedHashMap$Entry;
    .locals 2

    .line 125
    new-instance v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    iput-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 127
    iput-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    return-object v0
.end method

.method private getEntry(I)Ljava/util/Map$Entry;
    .locals 4

    .line 843
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-ltz p1, :cond_2

    const/4 v1, -0x1

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_0

    .line 851
    iget-object v2, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 853
    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    goto :goto_0

    .line 858
    :cond_0
    iget-object v2, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_1

    .line 862
    iget-object p1, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    return-object p1

    .line 859
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, " >= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v1, " < 0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertEntry(Lorg/apache/ldap/common/util/SequencedHashMap$Entry;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iput-object v0, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 211
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iput-object v0, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 212
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 213
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    return-void
.end method

.method private removeEntry(Lorg/apache/ldap/common/util/SequencedHashMap$Entry;)V
    .locals 2

    .line 201
    iget-object v0, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v1, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iput-object v1, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 202
    iget-object v0, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object p1, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iput-object p1, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    return-void
.end method

.method private removeImpl(Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;
    .locals 4

    .line 455
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 458
    :cond_0
    iget-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    .line 459
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->removeEntry(Lorg/apache/ldap/common/util/SequencedHashMap$Entry;)V

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 485
    iget-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    .line 488
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 491
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iput-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 492
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iput-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 813
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/util/SequencedHashMap;

    .line 816
    invoke-static {}, Lorg/apache/ldap/common/util/SequencedHashMap;->createSentinel()Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    .line 820
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    .line 823
    invoke-virtual {v0, p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 256
    iget-object p1, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    :cond_0
    iget-object p1, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eq p1, v1, :cond_3

    .line 257
    invoke-virtual {p1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 261
    :cond_1
    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    :cond_2
    iget-object v1, v1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v2, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_3

    .line 262
    invoke-virtual {v1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 624
    new-instance v0, Lorg/apache/ldap/common/util/SequencedHashMap$3;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/util/SequencedHashMap$3;-><init>(Lorg/apache/ldap/common/util/SequencedHashMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 504
    :cond_1
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_2

    return v0

    .line 507
    :cond_2
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 874
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 278
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirst()Ljava/util/Map$Entry;
    .locals 1

    .line 295
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    :goto_0
    return-object v0
.end method

.method public getFirstKey()Ljava/lang/Object;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirstValue()Ljava/lang/Object;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/util/Map$Entry;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    :goto_0
    return-object v0
.end method

.method public getLastKey()Ljava/lang/Object;
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLastValue()Ljava/lang/Object;
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 0

    .line 886
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->getEntry(I)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 514
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 896
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 901
    :goto_0
    iget-object v1, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v2, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 903
    iget-object p1, p1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->prev:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 914
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 544
    new-instance v0, Lorg/apache/ldap/common/util/SequencedHashMap$1;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/util/SequencedHashMap$1;-><init>(Lorg/apache/ldap/common/util/SequencedHashMap;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    .line 925
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 409
    iget-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->modCount:J

    .line 414
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->removeEntry(Lorg/apache/ldap/common/util/SequencedHashMap$Entry;)V

    .line 422
    invoke-virtual {v0, p2}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 431
    :cond_0
    new-instance v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    invoke-direct {v0, p1, p2}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 432
    iget-object p2, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 437
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->insertEntry(Lorg/apache/ldap/common/util/SequencedHashMap$Entry;)V

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 474
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 475
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 477
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/ldap/common/util/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 976
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 978
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 979
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 980
    invoke-virtual {p0, v2, v3}, Lorg/apache/ldap/common/util/SequencedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    .line 963
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/util/SequencedHashMap;->removeImpl(Ljava/lang/Object;)Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public sequence()Ljava/util/List;
    .locals 3

    .line 943
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 944
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 945
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 946
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->entries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 525
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    :cond_0
    :goto_0
    iget-object v1, v1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v2, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eq v1, v2, :cond_1

    .line 528
    invoke-virtual {v1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3d

    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 530
    invoke-virtual {v1}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 531
    iget-object v2, v1, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v3, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x2c

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 576
    new-instance v0, Lorg/apache/ldap/common/util/SequencedHashMap$2;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/util/SequencedHashMap$2;-><init>(Lorg/apache/ldap/common/util/SequencedHashMap;)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 991
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/SequencedHashMap;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 992
    iget-object v0, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    :goto_0
    iget-object v0, v0, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->next:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    iget-object v1, p0, Lorg/apache/ldap/common/util/SequencedHashMap;->sentinel:Lorg/apache/ldap/common/util/SequencedHashMap$Entry;

    if-eq v0, v1, :cond_0

    .line 993
    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 994
    invoke-virtual {v0}, Lorg/apache/ldap/common/util/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
