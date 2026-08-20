.class public Lcom/criteo/publisher/model/p;
.super Ljava/lang/Object;
.source "CdbRequestFactory.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/criteo/publisher/model/u;

.field private final d:Lcom/criteo/publisher/n0/b;

.field private final e:Lcom/criteo/publisher/l0/c;

.field private final f:Lcom/criteo/publisher/c0/d;

.field private final g:Lcom/criteo/publisher/n0/g;

.field private final h:Lcom/criteo/publisher/i0/c;

.field private final i:Lcom/criteo/publisher/context/b;

.field private final j:Lcom/criteo/publisher/context/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/n0/b;Lcom/criteo/publisher/l0/c;Lcom/criteo/publisher/c0/d;Lcom/criteo/publisher/n0/g;Lcom/criteo/publisher/i0/c;Lcom/criteo/publisher/context/b;Lcom/criteo/publisher/context/d;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/criteo/publisher/model/p;->a:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/criteo/publisher/model/p;->b:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/criteo/publisher/model/p;->c:Lcom/criteo/publisher/model/u;

    .line 90
    iput-object p4, p0, Lcom/criteo/publisher/model/p;->d:Lcom/criteo/publisher/n0/b;

    .line 91
    iput-object p5, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/l0/c;

    .line 92
    iput-object p6, p0, Lcom/criteo/publisher/model/p;->f:Lcom/criteo/publisher/c0/d;

    .line 93
    iput-object p7, p0, Lcom/criteo/publisher/model/p;->g:Lcom/criteo/publisher/n0/g;

    .line 94
    iput-object p8, p0, Lcom/criteo/publisher/model/p;->h:Lcom/criteo/publisher/i0/c;

    .line 95
    iput-object p9, p0, Lcom/criteo/publisher/model/p;->i:Lcom/criteo/publisher/context/b;

    .line 96
    iput-object p10, p0, Lcom/criteo/publisher/model/p;->j:Lcom/criteo/publisher/context/d;

    return-void
.end method

.method private a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/q;
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/criteo/publisher/model/p;->f:Lcom/criteo/publisher/c0/d;

    .line 148
    invoke-virtual {v0}, Lcom/criteo/publisher/c0/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->a()Lcom/criteo/publisher/n0/a;

    move-result-object v2

    .line 151
    invoke-virtual {p1}, Lcom/criteo/publisher/model/n;->c()Lcom/criteo/publisher/model/AdSize;

    move-result-object p1

    .line 147
    invoke-static {v0, v1, v2, p1}, Lcom/criteo/publisher/model/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/criteo/publisher/n0/a;Lcom/criteo/publisher/model/AdSize;)Lcom/criteo/publisher/model/q;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/q;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/n;

    .line 140
    invoke-direct {p0, v1}, Lcom/criteo/publisher/model/p;->a(Lcom/criteo/publisher/model/n;)Lcom/criteo/publisher/model/q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a([Ljava/lang/String;)Z
    .locals 4

    .line 251
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 252
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Ljava/util/List;Lcom/criteo/publisher/context/ContextData;)Lcom/criteo/publisher/model/o;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/n;",
            ">;",
            "Lcom/criteo/publisher/context/ContextData;",
            ")",
            "Lcom/criteo/publisher/model/o;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 104
    new-array v1, v0, [Ljava/util/Map;

    invoke-static {p2}, Lcom/criteo/publisher/context/c;->a(Lcom/criteo/publisher/context/AbstractContextData;)Ljava/util/Map;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v1}, Lcom/criteo/publisher/model/p;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 106
    iget-object v1, p0, Lcom/criteo/publisher/model/p;->a:Landroid/content/Context;

    .line 107
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/criteo/publisher/model/p;->b:Ljava/lang/String;

    .line 106
    invoke-static {v1, v3, p2}, Lcom/criteo/publisher/model/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/criteo/publisher/model/v;

    move-result-object v5

    const/4 p2, 0x2

    .line 112
    new-array p2, p2, [Ljava/util/Map;

    iget-object v1, p0, Lcom/criteo/publisher/model/p;->i:Lcom/criteo/publisher/context/b;

    .line 113
    invoke-virtual {v1}, Lcom/criteo/publisher/context/b;->j()Ljava/util/Map;

    move-result-object v1

    aput-object v1, p2, v2

    iget-object v1, p0, Lcom/criteo/publisher/model/p;->j:Lcom/criteo/publisher/context/d;

    .line 114
    invoke-virtual {v1}, Lcom/criteo/publisher/context/d;->a()Lcom/criteo/publisher/context/UserData;

    move-result-object v1

    invoke-static {v1}, Lcom/criteo/publisher/context/c;->a(Lcom/criteo/publisher/context/AbstractContextData;)Ljava/util/Map;

    move-result-object v1

    aput-object v1, p2, v0

    .line 112
    invoke-virtual {p0, p2}, Lcom/criteo/publisher/model/p;->a([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 117
    iget-object v0, p0, Lcom/criteo/publisher/model/p;->d:Lcom/criteo/publisher/n0/b;

    .line 118
    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/l0/c;

    .line 119
    invoke-virtual {v1}, Lcom/criteo/publisher/l0/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/criteo/publisher/n0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/l0/c;

    .line 120
    invoke-virtual {v2}, Lcom/criteo/publisher/l0/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/criteo/publisher/n0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/l0/c;

    .line 121
    invoke-virtual {v3}, Lcom/criteo/publisher/l0/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/criteo/publisher/n0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v0, v1, v2, v3, p2}, Lcom/criteo/publisher/model/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/criteo/publisher/model/z;

    move-result-object v6

    .line 125
    iget-object p2, p0, Lcom/criteo/publisher/model/p;->f:Lcom/criteo/publisher/c0/d;

    .line 126
    invoke-virtual {p2}, Lcom/criteo/publisher/c0/d;->a()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/criteo/publisher/model/p;->g:Lcom/criteo/publisher/n0/g;

    .line 129
    invoke-virtual {p2}, Lcom/criteo/publisher/n0/g;->q()Ljava/lang/String;

    move-result-object v7

    iget-object p2, p0, Lcom/criteo/publisher/model/p;->h:Lcom/criteo/publisher/i0/c;

    .line 130
    invoke-virtual {p2}, Lcom/criteo/publisher/i0/c;->b()I

    move-result v8

    iget-object p2, p0, Lcom/criteo/publisher/model/p;->e:Lcom/criteo/publisher/l0/c;

    .line 131
    invoke-virtual {p2}, Lcom/criteo/publisher/l0/c;->b()Lcom/criteo/publisher/l0/d/c;

    move-result-object v9

    .line 132
    invoke-direct {p0, p1}, Lcom/criteo/publisher/model/p;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 125
    invoke-static/range {v4 .. v10}, Lcom/criteo/publisher/model/o;->a(Ljava/lang/String;Lcom/criteo/publisher/model/v;Lcom/criteo/publisher/model/z;Ljava/lang/String;ILcom/criteo/publisher/l0/d/c;Ljava/util/List;)Lcom/criteo/publisher/model/o;

    move-result-object p1

    return-object p1
.end method

.method public final varargs a([Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 204
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 205
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 207
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v5, p1, v4

    .line 208
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\."

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-direct {p0, v7}, Lcom/criteo/publisher/model/p;->a([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v9, v0

    move v8, v3

    .line 217
    :goto_2
    array-length v10, v7

    add-int/lit8 v10, v10, -0x1

    if-ge v8, v10, :cond_3

    .line 218
    aget-object v10, v7, v8

    .line 220
    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 221
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 222
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 225
    check-cast v10, Ljava/util/Map;

    move-object v9, v10

    goto :goto_3

    .line 232
    :cond_2
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 233
    invoke-interface {v1, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v11

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 239
    :cond_3
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    .line 240
    invoke-interface {v9, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 242
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public a()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/criteo/publisher/model/p;->c:Lcom/criteo/publisher/model/u;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/u;->b()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
