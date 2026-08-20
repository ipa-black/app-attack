.class public Lcom/criteo/publisher/logging/i;
.super Ljava/lang/Object;
.source "PublisherCodeRemover.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/logging/i$c;,
        Lcom/criteo/publisher/logging/i$b;,
        Lcom/criteo/publisher/logging/i$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "com.criteo."

    iput-object v0, p0, Lcom/criteo/publisher/logging/i;->a:Ljava/lang/String;

    const/16 v0, 0x11

    .line 32
    new-array v0, v0, [Ljava/lang/String;

    .line 34
    const-string v1, "java."

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 35
    const-string v3, "javax."

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 36
    const-string v3, "sun."

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 37
    const-string v3, "com.sun."

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 40
    const-string v3, "com.intellij."

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 41
    const-string v3, "org.jetbrains."

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 42
    const-string v3, "kotlin."

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 45
    const-string v3, "android."

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 46
    const-string v3, "com.android."

    aput-object v3, v0, v1

    const/16 v1, 0x9

    .line 47
    const-string v3, "androidx."

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 48
    const-string v3, "dalvik."

    aput-object v3, v0, v1

    const/16 v1, 0xb

    .line 49
    const-string v3, "libcore."

    aput-object v3, v0, v1

    const/16 v1, 0xc

    .line 53
    const-string v3, "com.google"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    .line 54
    const-string v3, "com.mopub"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    .line 57
    const-string v3, "org.json"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    .line 58
    const-string v3, "com.squareup."

    aput-object v3, v0, v1

    const/16 v1, 0x10

    .line 61
    const-string v3, "org.junit."

    aput-object v3, v0, v1

    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/logging/i;->b:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/lang/StackTraceElement;

    const-string v1, "<private method>"

    const/4 v3, 0x0

    const-string v4, "<private class>"

    invoke-direct {v0, v4, v1, v3, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/criteo/publisher/logging/i;->c:Ljava/lang/StackTraceElement;

    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string v1, "original.stackTrace"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 160
    const-string v5, "it"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/criteo/publisher/logging/i;->b(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {p0, v4}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 162
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StackTraceElement;

    iget-object v5, p0, Lcom/criteo/publisher/logging/i;->c:Ljava/lang/StackTraceElement;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/criteo/publisher/logging/i;->c:Ljava/lang/StackTraceElement;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_2
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    :cond_4
    new-array p1, v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    sget-object v0, Lcom/criteo/publisher/logging/i$c;->d:Lcom/criteo/publisher/logging/i$c;

    .line 131
    invoke-virtual {p0, p1, p3}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/criteo/publisher/logging/i$c;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/StackTraceElement;)Z
    .locals 6

    .line 172
    iget-object v0, p0, Lcom/criteo/publisher/logging/i;->b:Ljava/util/List;

    .line 260
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "className"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private a(Ljava/lang/Throwable;)Z
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/criteo/publisher/logging/i;->b:Ljava/util/List;

    .line 265
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "javaClass.name"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v1, v2, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private b(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/lang/Throwable;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object p1

    .line 143
    const-string v0, "originalSuppressed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 148
    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p3}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    :cond_1
    sget-object p1, Lcom/criteo/publisher/logging/i$c;->d:Lcom/criteo/publisher/logging/i$c;

    .line 152
    invoke-virtual {p1, p2, v0}, Lcom/criteo/publisher/logging/i$c;->a(Ljava/lang/Throwable;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/StackTraceElement;)Z
    .locals 4

    .line 176
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/criteo/publisher/logging/i;->a:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/Throwable;)Z
    .locals 5

    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string v0, "stackTrace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 180
    const-string v4, "it"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/StackTraceElement;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 185
    invoke-direct {p0, v3}, Lcom/criteo/publisher/logging/i;->b(Ljava/lang/StackTraceElement;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    const-string v0, "original"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visited"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    return-object v0

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/logging/i;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-direct {p0, p1}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Lcom/criteo/publisher/logging/i$b;

    invoke-direct {v0, p1}, Lcom/criteo/publisher/logging/i$b;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :cond_1
    new-instance v0, Lcom/criteo/publisher/logging/i$b;

    invoke-direct {v0}, Lcom/criteo/publisher/logging/i$b;-><init>()V

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 103
    :goto_0
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 107
    :goto_1
    invoke-direct {p0, p1, v0, p2}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 108
    invoke-direct {p0, p1, v0, p2}, Lcom/criteo/publisher/logging/i;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    .line 114
    sget-object p2, Lcom/criteo/publisher/logging/i$c;->d:Lcom/criteo/publisher/logging/i$c;

    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/criteo/publisher/logging/i$c;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public c(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/criteo/publisher/logging/i;->a(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 76
    new-instance v0, Lcom/criteo/publisher/logging/i$a;

    invoke-direct {v0, p1}, Lcom/criteo/publisher/logging/i$a;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
