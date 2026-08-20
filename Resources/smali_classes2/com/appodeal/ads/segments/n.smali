.class public final Lcom/appodeal/ads/segments/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/segments/n$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lcom/appodeal/ads/segments/k;

.field public static final c:Ljava/util/LinkedHashSet;

.field public static final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static e:Lcom/appodeal/ads/segments/k;

.field public static f:Lcom/appodeal/ads/segments/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/segments/n$b;->a:Lcom/appodeal/ads/segments/n$b;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/segments/n;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/appodeal/ads/segments/k;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lcom/appodeal/ads/segments/k;-><init>(Lorg/json/JSONObject;)V

    sput-object v0, Lcom/appodeal/ads/segments/n;->b:Lcom/appodeal/ads/segments/k;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v1, Lcom/appodeal/ads/segments/n;->c:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v1, Lcom/appodeal/ads/segments/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    sput-object v0, Lcom/appodeal/ads/segments/n;->e:Lcom/appodeal/ads/segments/k;

    new-instance v0, Lcom/appodeal/ads/segments/n$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/appodeal/ads/segments/n$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/appodeal/ads/segments/j;->a(Lcom/appodeal/ads/segments/j$a;)V

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object v0

    invoke-static {v0}, Lcom/appodeal/ads/segments/q;->a(Lcom/appodeal/ads/segments/k;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/appodeal/ads/segments/n;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;

    .line 2
    invoke-interface {v0}, Lcom/appodeal/ads/modules/common/internal/context/ContextProvider;->getApplicationContextOrNull()Landroid/content/Context;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/appodeal/ads/segments/o;->a:Lcom/appodeal/ads/segments/o;

    invoke-static {v0, v1}, Lcom/appodeal/ads/segments/n;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 4
    sget-object v0, Lcom/appodeal/ads/segments/o;->a:Lcom/appodeal/ads/segments/o;

    invoke-static {p0, v0}, Lcom/appodeal/ads/segments/n;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "onUpdated"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/segments/n;->f:Lcom/appodeal/ads/segments/k;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/appodeal/ads/segments/n;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/appodeal/ads/segments/k;

    iget v3, v2, Lcom/appodeal/ads/segments/k;->c:I

    iget-object v2, v2, Lcom/appodeal/ads/segments/k;->d:[Lcom/appodeal/ads/segments/i;

    invoke-static {p0, v3, v2}, Lcom/appodeal/ads/segments/j;->a(Landroid/content/Context;I[Lcom/appodeal/ads/segments/i;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/appodeal/ads/segments/k;

    if-nez v1, :cond_3

    sget-object v1, Lcom/appodeal/ads/segments/n;->b:Lcom/appodeal/ads/segments/k;

    :cond_3
    invoke-virtual {v1}, Lcom/appodeal/ads/segments/k;->b()J

    move-result-wide v2

    sget-object p0, Lcom/appodeal/ads/segments/n;->e:Lcom/appodeal/ads/segments/k;

    invoke-virtual {p0}, Lcom/appodeal/ads/segments/k;->b()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Lcom/appodeal/ads/segments/k;->a()V

    sput-object v1, Lcom/appodeal/ads/segments/n;->e:Lcom/appodeal/ads/segments/k;

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object p0

    invoke-static {p0}, Lcom/appodeal/ads/segments/q;->a(Lcom/appodeal/ads/segments/k;)V

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static final a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/appodeal/ads/segments/n;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/appodeal/ads/segments/n;->c:Ljava/util/LinkedHashSet;

    new-instance v4, Lcom/appodeal/ads/segments/k;

    invoke-direct {v4, v1}, Lcom/appodeal/ads/segments/k;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/appodeal/ads/segments/n$c;->a:Lcom/appodeal/ads/segments/n$c;

    invoke-static {p0, p1}, Lcom/appodeal/ads/segments/n;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    sget-object v0, Lcom/appodeal/ads/segments/p;->a:Lcom/appodeal/ads/segments/p;

    .line 5
    const-string v1, "onUpdated"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Lcom/appodeal/ads/segments/n;->c:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    new-instance p0, Lcom/appodeal/ads/segments/k;

    invoke-direct {p0, p1}, Lcom/appodeal/ads/segments/k;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/segments/k;->b()J

    move-result-wide v1

    sget-object p1, Lcom/appodeal/ads/segments/n;->f:Lcom/appodeal/ads/segments/k;

    const/4 v3, 0x1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/segments/k;->b()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-nez p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    :goto_1
    xor-int/2addr p1, v3

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/appodeal/ads/segments/k;->a()V

    sput-object p0, Lcom/appodeal/ads/segments/n;->f:Lcom/appodeal/ads/segments/k;

    invoke-static {}, Lcom/appodeal/ads/segments/n;->c()Lcom/appodeal/ads/segments/k;

    move-result-object p0

    invoke-static {p0}, Lcom/appodeal/ads/segments/q;->a(Lcom/appodeal/ads/segments/k;)V

    invoke-virtual {v0}, Lcom/appodeal/ads/segments/p;->invoke()Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public static final a(Lcom/appodeal/ads/u$b;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "listener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/ads/segments/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/appodeal/ads/r0;->d()V

    sget-object v0, Lcom/appodeal/ads/segments/n;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/segments/n$a;

    invoke-interface {v1}, Lcom/appodeal/ads/segments/n$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final c()Lcom/appodeal/ads/segments/k;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/segments/n;->f:Lcom/appodeal/ads/segments/k;

    if-nez v0, :cond_0

    sget-object v0, Lcom/appodeal/ads/segments/n;->e:Lcom/appodeal/ads/segments/k;

    :cond_0
    return-object v0
.end method
