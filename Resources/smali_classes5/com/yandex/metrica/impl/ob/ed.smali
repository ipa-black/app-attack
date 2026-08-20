.class public Lcom/yandex/metrica/impl/ob/ed;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/U7;

.field private final b:Lcom/yandex/metrica/impl/ob/T7;

.field private final c:Lcom/yandex/metrica/impl/ob/bd;

.field private final d:Lcom/yandex/metrica/impl/ob/Zc;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ja;->f()Lcom/yandex/metrica/impl/ob/U7;

    move-result-object v2

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ja;->e()Lcom/yandex/metrica/impl/ob/T7;

    move-result-object v3

    new-instance v4, Lcom/yandex/metrica/impl/ob/Vb;

    invoke-direct {v4, p1}, Lcom/yandex/metrica/impl/ob/Vb;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/yandex/metrica/impl/ob/ad;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/ad;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/Yc;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/Yc;-><init>()V

    move-object v1, p0

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/ed;-><init>(Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/impl/ob/Vb;Lcom/yandex/metrica/impl/ob/ad;Lcom/yandex/metrica/impl/ob/Yc;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/impl/ob/Vb;Lcom/yandex/metrica/impl/ob/ad;Lcom/yandex/metrica/impl/ob/Yc;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/bd;

    invoke-direct {v0, p3, p4}, Lcom/yandex/metrica/impl/ob/bd;-><init>(Lcom/yandex/metrica/impl/ob/Vb;Lcom/yandex/metrica/impl/ob/ad;)V

    new-instance p4, Lcom/yandex/metrica/impl/ob/Zc;

    invoke-direct {p4, p3, p5}, Lcom/yandex/metrica/impl/ob/Zc;-><init>(Lcom/yandex/metrica/impl/ob/Vb;Lcom/yandex/metrica/impl/ob/Yc;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/yandex/metrica/impl/ob/ed;-><init>(Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/impl/ob/bd;Lcom/yandex/metrica/impl/ob/Zc;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/U7;Lcom/yandex/metrica/impl/ob/T7;Lcom/yandex/metrica/impl/ob/bd;Lcom/yandex/metrica/impl/ob/Zc;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ed;->a:Lcom/yandex/metrica/impl/ob/U7;

    .line 7
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/ed;->b:Lcom/yandex/metrica/impl/ob/T7;

    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ed;->c:Lcom/yandex/metrica/impl/ob/bd;

    .line 9
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/ed;->d:Lcom/yandex/metrica/impl/ob/Zc;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/yandex/metrica/impl/ob/dd;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ed;->a:Lcom/yandex/metrica/impl/ob/U7;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/J7;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/ed;->b:Lcom/yandex/metrica/impl/ob/T7;

    invoke-virtual {v1, p1}, Lcom/yandex/metrica/impl/ob/J7;->a(I)Ljava/util/Map;

    move-result-object p1

    .line 4
    new-instance v6, Lcom/yandex/metrica/impl/ob/pf;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/pf;-><init>()V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    move-object v2, v0

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/ed;->c:Lcom/yandex/metrica/impl/ob/bd;

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v4}, Lcom/yandex/metrica/impl/ob/bd;->a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/pf$b;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 10
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/yandex/metrica/impl/ob/pf$b;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yandex/metrica/impl/ob/pf$b;

    .line 14
    iput-object v1, v6, Lcom/yandex/metrica/impl/ob/pf;->a:[Lcom/yandex/metrica/impl/ob/pf$b;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    move-object v3, p1

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 17
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/ed;->d:Lcom/yandex/metrica/impl/ob/Zc;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v5}, Lcom/yandex/metrica/impl/ob/Zc;->a(JLjava/lang/String;)Lcom/yandex/metrica/impl/ob/pf$a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 19
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/yandex/metrica/impl/ob/pf$a;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yandex/metrica/impl/ob/pf$a;

    .line 23
    iput-object v1, v6, Lcom/yandex/metrica/impl/ob/pf;->b:[Lcom/yandex/metrica/impl/ob/pf$a;

    .line 25
    new-instance v7, Lcom/yandex/metrica/impl/ob/dd;

    .line 26
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_4

    move-wide v8, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v8, v0

    .line 27
    :goto_2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v4, v0

    :goto_3
    move-object v1, v7

    move-wide v2, v8

    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/dd;-><init>(JJLcom/yandex/metrica/impl/ob/pf;)V

    return-object v7
.end method

.method public a(Lcom/yandex/metrica/impl/ob/dd;)V
    .locals 5

    .line 28
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/dd;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 30
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/ed;->a:Lcom/yandex/metrica/impl/ob/U7;

    invoke-virtual {v4, v0, v1}, Lcom/yandex/metrica/impl/ob/J7;->c(J)I

    .line 33
    :cond_0
    iget-wide v0, p1, Lcom/yandex/metrica/impl/ob/dd;->b:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 35
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/ed;->b:Lcom/yandex/metrica/impl/ob/T7;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/J7;->c(J)I

    :cond_1
    return-void
.end method
